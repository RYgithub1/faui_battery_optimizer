import 'package:flutter/material.dart';
import 'dart:math';  /// [sin/cos]



class BodyIndicater extends StatefulWidget {
  @override
  _BodyIndicaterState createState() => _BodyIndicaterState();
}


class _BodyIndicaterState extends State<BodyIndicater> {
  final double size = 123.0;
  /// [define localValuable]
  var _percentage = 0.777;
  @override
  Widget build(BuildContext context) {
    return CustomPaint(   /// [CustomPaint()]
      painter: MyPainter(  /// fromp[CustomPaint()]to[CustomPainter{}]
        percentage: _percentage,
        textCircleRadius: size * 0.5,
      ),
      child: Container(
        padding: const EdgeInsets.all(40),
        child: Material(
          color: Colors.white,
          elevation: 0,
          borderRadius: BorderRadius.circular(size * 0.5),
          child: Container(
            width: size,
            height: size,
            child: Center(
              child: Text(
                '${_percentage * 100}%',
                style: TextStyle(color: Colors.pink[200], fontSize: 30),
              ),
            ),
          ),
        ),
      ),
    );
  }
}



/// fromp[CustomPaint()]to[CustomPainter{}]
class MyPainter extends CustomPainter{
  final double percentage;  // バッテリーレベルの割合
  final double textCircleRadius;  // 内側に表示される白丸の半径
  // MyPainter({Key key, this.percentage, this.textCircleRadius}):super(key:key);  // key不要、@required必要
  MyPainter({@required this.percentage, @required this.textCircleRadius});

  @override
  void paint(Canvas canvas, Size size) {   /// [======== 1... void paint() ========]
    for (int i = 1; i < (360 * percentage); i += 5) {
      final per = i / 360.0;
      final color = ColorTween(  // 割合（0~1.0）からグラデーション色に変換
        begin: Colors.blue[100],
        end: Colors.red[100],
      ).lerp(per);
      final paint = Paint()   /// [canvas.drawDo向けpaint]
        ..color = color
        ..style = PaintingStyle.stroke
        ..strokeWidth = 4;
      final spaceLen = 16;  // 長さ（円とゲージ間）
      final lineLen = 24;  // 長さ（ゲージ）
      final angle = (2 * pi * per) - (pi / 2);  // 0時方向から開始するため-90度
      final offset0 = Offset(size.width * 0.5, size.height * 0.5);  // offset0...円の中心座標
      final offset1 = offset0.translate(  // offset1...線の内側部分の座標
        (textCircleRadius + spaceLen) * cos(angle),
        (textCircleRadius + spaceLen) * sin(angle),
      );
      final offset2 = offset1.translate(  // offset2...線の外側部分の座標
        lineLen * cos(angle),
        lineLen * sin(angle),
      );

      canvas.drawLine(offset1, offset2, paint);   /// [canvas.drawDo]
    }
  }


  @override
  bool shouldRepaint(CustomPainter oldDelegate) {    /// [======== 2... bool shouldRepaint() ========]
    // return oldDelegate.myPainter != MyPainter();  // 今回CustomPaintのリビルド不要
    return false;
  }
}