import 'package:flutter/material.dart';

class UpdateWidgetPage extends StatefulWidget {
  UpdateWidgetPage({Key key}) : super(key: key);

  @override
  _UpdateWidgetState createState() => _UpdateWidgetState();
}

class _UpdateWidgetState extends State<UpdateWidgetPage> {
  // Default placeholder text
  String textToShow = "I Like Flutter";

  void _updateText() {
    // ====== update the text ======
    setState(() {
      textToShow = "Flutter is Awesome!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('How to update Widget'),
      ),
      body: Center(child: Text(textToShow)),

      // Button Update Text
      floatingActionButton: FloatingActionButton(
        onPressed: _updateText,
        tooltip: 'Update Text',
        child: Icon(Icons.update),
      ),
    );
  }
}