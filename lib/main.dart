import 'package:flutter_training/codelabs/layout/LayoutBasicPage.dart';
import 'package:flutter_training/codelabs/layout/LayoutPractice1Page.dart';
import 'package:flutter_training/codelabs/SimpleChatPage.dart';
import 'package:flutter/material.dart';

import 'codelabs/FavoriteWordListPage.dart';
import 'codelabs/layout/StackLayoutPage.dart';
import 'codelabs/WordListPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: 'Flutter Demo'),
      routes: <String, WidgetBuilder> {
        "layout_practice_1": (BuildContext context) => LayoutPractice1Page(title: "Layout Practice 1",),
        "stack_layout": (BuildContext context) => StackLayoutPage(),
        "layout_basic": (BuildContext context) => LayoutBasicPage(title: "Layout Basic",),
        "first_app_1": (BuildContext context) => WordListPage(title: "Word List",),
        "first_app_2": (BuildContext context) => FavoriteWordListPage(title: "Favorite Word List",),
        "build_beautiful_uis": (BuildContext context) => SimpleChatPage(title: "Simple Chat",),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _navigateTo(String routeName){
    Navigator.of(context).pushNamed(routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          Text("Code Labs"),
          RaisedButton(
            onPressed: () { _navigateTo("layout_basic"); },
            child: Text("Basic Flutter layout concepts"),
          ),
          RaisedButton(
            onPressed: () { _navigateTo("first_app_1"); },
            child: Text("Write Your First Flutter App, part 1"),
          ),
          RaisedButton(
            onPressed: () { _navigateTo("first_app_2"); },
            child: Text("Write Your First Flutter App, part 2"),
          ),
          RaisedButton(
            onPressed: () { _navigateTo("build_beautiful_uis"); },
            child: Text("Building Beautiful UIs with Flutter"),
          ),
          RaisedButton(
            onPressed: () { _navigateTo(""); },
            child: Text("Building a Cupertino app with Flutter"),
          ),
          Divider()
        ],
      ),
    );
  }
}
