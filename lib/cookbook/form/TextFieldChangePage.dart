import 'package:flutter/material.dart';

class TextFieldChangePage extends StatefulWidget {
  TextFieldChangePage({Key key}) : super(key: key);

  @override
  _TextFieldChangePageState createState() => _TextFieldChangePageState();
}

class _TextFieldChangePageState extends State<TextFieldChangePage> {
  var newText = "";

  // Controller text field
  final myController = TextEditingController();

  @override
  void initState() {
    super.initState();

    // Start listening text changed
    myController.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    // Widget is removed from the widget tree

    // Clear Controller
    myController.dispose();
    super.dispose();
  }

  _printLatestValue() {
    print("first text field: ${myController.text}");
    setState(() {
      newText = myController.text;
    });
  }

  _printLatestValue2(String value) {
    print("Second text field: $value");
    setState(() {
      newText = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Field Change"),
      ),
      body: Column(
          children: <Widget> [
            Text("value: $newText"),

            // === Method 1 ===
            TextField(
              decoration: InputDecoration(
                hintText: "Write some thing 1"
              ),
              onChanged: (text) {
                _printLatestValue2(text);
              },
            ),

            // === Method 2 ===
            TextField(
              decoration: InputDecoration(
                  hintText: "Write some thing 2"
              ),
              controller: myController,
            )
          ]
      ),
    );
  }
}