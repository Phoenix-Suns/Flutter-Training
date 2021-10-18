import 'package:flutter/material.dart';

class SnackBarPage extends StatefulWidget {
  SnackBarPage({Key? key}) : super(key: key);

  @override
  _SnackBarPageState createState() => _SnackBarPageState();
}

class _SnackBarPageState extends State<SnackBarPage> {



  _showSnackBar(BuildContext context) {
    var snackBar = SnackBar(
      content: Text("I am Back", style: Theme.of(context).textTheme.bodyText2,),
      action: SnackBarAction(
        label: 'Click Again?',
        onPressed: () {
          // Some code to undo the change.
          print("Ok con dê");
        },
      ),
    );

    // Find the Scaffold in the widget tree and use it to show a SnackBar.
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample App"),
      ),
      body: Center(
        child: Builder(
          builder: (context) => ElevatedButton(
            child: Text("Show Snackbar"),
            onPressed: () {
              _showSnackBar(context);
            },
          ),
        ),
      ),
    );
  }
}
