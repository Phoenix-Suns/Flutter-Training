import 'package:flutter_training/codelabs/layout/LayoutBasicPage.dart';
import 'package:flutter_training/codelabs/layout/LayoutPractice1Page.dart';
import 'package:flutter_training/codelabs/SimpleChatPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_training/fromOtherPlatform/fromAndroid/AddRemoveComponentPage.dart';
import 'package:flutter_training/fromOtherPlatform/fromAndroid/AnimateWidgetPage.dart';
import 'package:flutter_training/fromOtherPlatform/fromAndroid/DrawOnCanvasPage.dart';
import 'package:flutter_training/fromOtherPlatform/fromAndroid/FetchAPIPage.dart';
import 'package:flutter_training/fromOtherPlatform/fromAndroid/FromAndroidPage.dart';
import 'package:flutter_training/fromOtherPlatform/fromAndroid/RouteArgumentPage.dart';
import 'package:flutter_training/fromOtherPlatform/fromAndroid/UpdateWidgetPage.dart';

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

        "from_android": (BuildContext context) => FromAndroidPage(),
        "update_widget": (BuildContext context) => UpdateWidgetPage(),
        "add_remove_component": (BuildContext context) => AddRemoveComponentPage(),
        "animate_widget": (BuildContext context) => AnimateWidgetPage(),
        "draw_on_canvas": (BuildContext context) => DrawOnCanvasPage(),
        "route_argument": (BuildContext context) => RouteArgumentPage(),
        "fetch_api": (BuildContext context) => FetchAPIPage(),
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
            child: Text("Basic Flutter layout concepts"),
            onPressed: () { _navigateTo("layout_basic"); },
          ),
          RaisedButton(
            child: Text("Write Your First Flutter App, part 1"),
            onPressed: () { _navigateTo("first_app_1"); },
          ),
          RaisedButton(
            child: Text("Write Your First Flutter App, part 2"),
            onPressed: () { _navigateTo("first_app_2"); },
          ),
          RaisedButton(
            child: Text("Building Beautiful UIs with Flutter"),
            onPressed: () { _navigateTo("build_beautiful_uis"); },
          ),
          RaisedButton(
            child: Text("Building a Cupertino app with Flutter"),
            onPressed: () { _navigateTo(""); },
          ),
          Divider(),

          Text("From another platform"),
          RaisedButton(
            child: Text("from Android devs"),
            onPressed: () { _navigateTo("from_android"); },
          )
        ],
      ),
    );
  }
}
