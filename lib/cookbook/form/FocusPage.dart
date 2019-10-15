import 'package:flutter/material.dart';

class FocusPage extends StatefulWidget {
  FocusPage({Key key}) : super(key: key);

  @override
  _FocusPageState createState() => _FocusPageState();
}

class _FocusPageState extends State<FocusPage> {

  FocusNode myFocusNode;

  @override
  void initState() {
    super.initState();

    // Init Focus
    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    // Clear Focus
    myFocusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Focus Field"),
      ),
      body: Column(
        children: <Widget>[
          // Auto Focus
          TextField(
            autofocus: true,
          ),
          TextField(
            focusNode: myFocusNode,
          ),
          RaisedButton(
            child: Text("Focus second Field"),
            onPressed: () => FocusScope.of(context).requestFocus(myFocusNode),
          )
        ],
      )
    );
  }
}