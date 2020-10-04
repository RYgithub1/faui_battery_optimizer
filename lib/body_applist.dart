import 'package:flutter/material.dart';



class BodyApplist extends StatefulWidget {
  @override
  _BodyApplistState createState() => _BodyApplistState();
}

class _BodyApplistState extends State<BodyApplist> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Column(
          children: <Widget>[
            ListTile(   /// [***  共通書式の反復なら、メソッド化クラス化で変数渡しも有り ***]
              leading: Icon(Icons.apps, color: Colors.purple),
              title: Text("App Drainage"),
              subtitle: Text("Show the most draining enegy app"),
              trailing: Text(""),
            ),
            Divider(height:2, thickness:3, indent:20, endIndent:20),
            ListTile(
              leading: Icon(Icons.sms, color: Colors.blue),
              title: Text("SMSApp"),
              trailing: Text("75%"),
            ),
            Divider(height:1, thickness:1, indent:20, endIndent:20),
            ListTile(
              leading: Icon(Icons.live_tv, color: Colors.red),
              title: Text("MovieApp"),
              trailing: Text("60%"),
            ),
            Divider(height:1, thickness:1, indent:20, endIndent:20),
            ListTile(
              leading: Icon(Icons.place, color: Colors.green),
              title: Text("MapApp"),
              trailing: Text("35%"),
            ),
            Divider(height:1, thickness:1, indent:20, endIndent:20),
            ListTile(
              leading: Icon(Icons.local_grocery_store, color: Colors.orange),
              title: Text("MapApp"),
              trailing: Text("35%"),
            ),
            Divider(height:1, thickness:1, indent:20, endIndent:20),
            ListTile(
              leading: Icon(Icons.train, color: Colors.black),
              title: Text("TrainApp"),
              trailing: Text("15%"),
            ),
          ],
        ),
      ),
    );
  }
}