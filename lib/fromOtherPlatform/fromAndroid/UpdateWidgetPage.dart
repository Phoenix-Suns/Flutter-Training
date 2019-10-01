import 'package:flutter/material.dart';

class UpdateWidgetPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'How to update Widget',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: UpdateWidget(),
    );
  }
}

class UpdateWidget extends StatefulWidget {
  UpdateWidget({Key key}) : super(key: key);

  @override
  _UpdateWidgetState createState() => _UpdateWidgetState();
}

class _UpdateWidgetState extends State<UpdateWidget> {
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
        title: Text('How to update Widget :)'),
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