import 'package:flutter/material.dart';

class SimpleWidget extends StatefulWidget {
  SimpleWidget({Key? key}) : super(key: key);

  @override
  _SimpleWidgetState createState() => _SimpleWidgetState();
}

class _SimpleWidgetState extends State<SimpleWidget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample App"),
      ),
      body: Center(
        child: Text("Nghĩa"),
      ),
    );
  }
}