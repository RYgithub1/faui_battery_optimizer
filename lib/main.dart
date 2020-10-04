import 'package:flutter/material.dart';
import 'body_applist.dart';
import 'body_footer.dart';
import 'body_indicater.dart';
import 'body_optimizer.dart';


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
  // final String nothingValue;
  // HomePage({Key key,this.nothingValue}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryColor,
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Battery Optimizer", style: TextStyle(fontSize: 25.0),),
        centerTitle: true,
        backgroundColor: PrimaryColor,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              BodyOptimizer(),
              BodyIndicater(),
              BodyApplist(),
              BodyFooter(),
            ]
          ),
        ),
      ),
    );
  }
}