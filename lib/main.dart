import 'package:flutter/material.dart';

import 'body_applist.dart';
import 'body_footer.dart';


void main(List<String> args) {
  runApp(MyApp());
}

const PrimaryColor = const Color(0xffe1f5fe);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Battery Optimizer",
      // theme: ThemeData.light(),
      theme: ThemeData(
        primaryColor: PrimaryColor,
      ),
      home: HomePage(),
    );
  }
}


class HomePage extends StatelessWidget {
  HomePage({Key key,}) : super(key:key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryColor,
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Battery Optimizer", style: TextStyle(fontSize: 30.0),),
        centerTitle: true,
        backgroundColor: PrimaryColor,
      ),
      body: Column(
        children: [
          // BodyOptimizer(),
          // BodyIndicater(),
          BodyApplist(),
          BodyFooter(),
        ]
      ),
    );
  }
}