import 'package:flutter/material.dart';

class CustomThemePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Custom Theme",

        // ===== Custom Theme =====
        theme: ThemeData(
          // Define the default brightness and colors.
          brightness: Brightness.dark,
          primaryColor: Colors.orange[800],
          accentColor: Colors.cyan[600],

          // Define the default font family.
          fontFamily: 'Grenze',

          // Define the default TextTheme. Use this to specify the default
          // text styling for headlines, titles, bodies of text, and more.
          textTheme: TextTheme(
            headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
            body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
          ),
        ),

      home: CustomTheme(),
    );
  }

}

class CustomTheme extends StatefulWidget {
  CustomTheme({Key key}) : super(key: key);

  @override
  _CustomThemeState createState() => _CustomThemeState();
}

class _CustomThemeState extends State<CustomTheme> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample App"),
      ),
      body: Column(
          children: <Widget>[
            Text("Simple Text"),
            Text("Custom Headline", style: Theme.of(context).textTheme.headline,),
            Text("Custom Title", style: Theme.of(context).textTheme.title,),

            // ==== Apply Custom Theme and Color ====
            Container(
              color: Theme.of(context).primaryColor,
                child: Text("Custom Body1", style: Theme.of(context).textTheme.body1,)
            ),
          ],
      ),

      floatingActionButton: Theme(
        data: Theme.of(context).copyWith(
          colorScheme:
          Theme.of(context).colorScheme.copyWith(secondary: Colors.yellow),
        ),
        child: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}