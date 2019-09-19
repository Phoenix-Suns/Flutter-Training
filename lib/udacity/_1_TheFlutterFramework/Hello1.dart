import 'package:flutter/material.dart';

// simple main
/*void main() {
  runApp(
      Container(
        color: Colors.red,
      )
  );
}*/

// main with Material Theme
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('Hello Rectangle'),
      ),
      body: HelloRectangle(),
    ),
  ));
}

// simple Widget
/*
Widget helloRectangle() {
  return Container(
    color: Colors.green,
  );
}*/

class HelloRectangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      color: Colors.blue,
      height: 400.0,
      width: 300.0,
      child: Center(
        child: Text(
          'Hello!',
          style: TextStyle(fontSize: 40.0),
        ),
      ),
    ));
  }
}

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[

        ],
      ),
    );
  }
}
