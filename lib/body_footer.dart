import 'package:flutter/material.dart';


class BodyFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: RaisedButton(
          onPressed: () {},
          textColor: Colors.white,
          color: Colors.purple[200],
          shape: StadiumBorder(),
          child: Text("Optimize Now"),
        ),
      ),
    );
  }
}