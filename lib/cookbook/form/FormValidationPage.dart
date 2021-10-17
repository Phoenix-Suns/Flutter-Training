import 'package:flutter/material.dart';

class FormValidationPage extends StatefulWidget {
  FormValidationPage({Key? key}) : super(key: key);

  @override
  _FormValidationPageState createState() => _FormValidationPageState();
}

class _FormValidationPageState extends State<FormValidationPage> {
  final _formKey = GlobalKey<FormState>();  // Manage Form By Key

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Scaffold(
      appBar: AppBar(title: Text("Form"),),
      body: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                // ===== The Validate Field =====
                validator: (value) {
                  if (value?.isEmpty == true) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),

              RaisedButton(
                onPressed: () {
                  // ===== Validate button =====
                  if (_formKey.currentState?.validate() == true) {
                    // If the form is valid, display a Snackbar.
                    Scaffold.of(context)
                        .showSnackBar(
                        SnackBar(content: Text('Processing Data')));
                  }
                },
                child: Text('Submit'),
              ),

              // ==== Custom Text field ====
              TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Custom Text Field'
                ),
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Custom Text Field'
                ),
              )
            ],
          ) // Build this out in the next steps.
      ),
    );
  }
}
