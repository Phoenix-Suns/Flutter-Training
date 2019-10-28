import 'package:flutter/material.dart';

class MultiTypePage extends StatefulWidget {
  MultiTypePage({Key key}) : super(key: key);

  @override
  _MultiTypePageState createState() => _MultiTypePageState();
}

class _MultiTypePageState extends State<MultiTypePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample App"),
      ),
      body: ListView(
        // This next line does the trick.
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 160.0,
            color: Colors.red,
          ),
          Container(
            width: 160.0,
            color: Colors.blue,
          ),
          Container(
            width: 160.0,
            color: Colors.green,
          ),
          Container(
            width: 160.0,
            color: Colors.yellow,
          ),
          Container(
            width: 160.0,
            color: Colors.orange,
          ),
        ],
      )
    );
  }
}