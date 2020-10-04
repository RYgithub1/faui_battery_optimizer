import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class BodyOptimizer extends StatefulWidget {
  @override
  _BodyOptimizerState createState() => _BodyOptimizerState();
}

class _BodyOptimizerState extends State<BodyOptimizer> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          OptimizerList(namedParameterText: "Battery Optimizer"),
          SizedBox(width:5.0),
          OptimizerList(namedParameterText: "Connection Optimizer"),
          SizedBox(width:5.0),
          OptimizerList(namedParameterText: "Memory Optimizer"),
          SizedBox(width:5.0),
          OptimizerList(namedParameterText: "Storage Optimizer"),
          SizedBox(width:5.0),
          OptimizerList(namedParameterText: "Network Optimizer"),
          SizedBox(width:5.0),
          OptimizerList(namedParameterText: "Brightness Optimizer"),
          SizedBox(width:5.0),
          OptimizerList(namedParameterText: "Zen Optimizer"),
        ],
      ),
    );
  }
}


/// ++++[sup]+++++++++++++++++++++++++++++++++++++++++
@override
// class OptimizerList extends StatefulWidget{
class OptimizerList extends StatelessWidget{
  // String namedParameterText;
  final String namedParameterText;  /// [to pass argu]
  OptimizerList({Key key, @required this.namedParameterText}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(namedParameterText),
      color: Colors.blueGrey[100],
      shape: StadiumBorder(),
      onPressed: () {},
    );
  }
}