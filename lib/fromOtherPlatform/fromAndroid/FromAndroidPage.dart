

import 'package:flutter/material.dart';

class FromAndroidPage extends StatefulWidget {
  @override
  _FromAndroidPageState createState() => _FromAndroidPageState();
}

class _FromAndroidPageState extends State<FromAndroidPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Android Devs"),
      ),
      body: ListView(
        children: <Widget>[
          RaisedButton(
              onPressed: () {Navigator.of(context).pushNamed("update_widget"); },
              child: Text("Update Widget?")
          ),
          RaisedButton(
              onPressed: () {Navigator.of(context).pushNamed("add_remove_component"); },
              child: Text("Add or remove a component?")
          ),
          RaisedButton(
              onPressed: () {Navigator.of(context).pushNamed("animate_widget"); },
              child: Text("Animate Widget?")
          ),
          RaisedButton(
              onPressed: () {Navigator.of(context).pushNamed("draw_on_canvas"); },
              child: Text("Draw on Canvas?")
          ),
          CustomButton("Custom Button"),
          RaisedButton(
              onPressed: () {},
              child: Text("Start Activity Android, XIB Ios, send and receive Data (Not yet)")
          ),
          RaisedButton(
              onPressed: () {Navigator.of(context).pushNamed("route_argument"); },
              child: Text("Send, Receive Route Arguments")
          ),
          RaisedButton(
              onPressed: () {Navigator.of(context).pushNamed("fetch_api"); },
              child: Text("Async UI, Fetch API")
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String label;

  CustomButton(this.label);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: () {},
        child: Container(
          child: Column(
            children: <Widget>[
              Icon(Icons.access_alarm),
              Text(label),
            ],
          ),
          margin: EdgeInsets.all(16),
        )
    );
  }
}