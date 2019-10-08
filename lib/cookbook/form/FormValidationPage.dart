import 'package:flutter/material.dart';

class FormValidationPage extends StatefulWidget {
  FormValidationPage({Key key}) : super(key: key);

  @override
  _FormValidationPageState createState() => _FormValidationPageState();
}

class _FormValidationPageState extends State<FormValidationPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
        key: _formKey,
        child: Text("Nghia")// Build this out in the next steps.
    );
  }
}