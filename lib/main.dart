import 'package:flutter_training/codelabs/layout/LayoutBasicPage.dart';
import 'package:flutter_training/codelabs/layout/LayoutPractice1Page.dart';
import 'package:flutter_training/codelabs/SimpleChatPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_training/cookbook/design/CustomThemePage.dart';
import 'package:flutter_training/cookbook/design/DrawerMenuPage.dart';
import 'package:flutter_training/cookbook/design/FontPage.dart';
import 'package:flutter_training/cookbook/design/GridOrientationPage.dart';
import 'package:flutter_training/cookbook/design/SnackBarPage.dart';
import 'package:flutter_training/cookbook/design/TabPage.dart';
import 'package:flutter_training/cookbook/form/FormValidationPage.dart';
import 'package:flutter_training/cookbook/form/FocusPage.dart';
import 'package:flutter_training/cookbook/form/TextFieldChangePage.dart';
import 'package:flutter_training/cookbook/list/GridListPage.dart';
import 'package:flutter_training/cookbook/list/HorizontalListPage.dart';
import 'package:flutter_training/cookbook/list/SwipeItemPage.dart';
import 'package:flutter_training/fromOtherPlatform/AddRemoveComponentPage.dart';
import 'package:flutter_training/fromOtherPlatform/AnimateWidgetPage.dart';
import 'package:flutter_training/fromOtherPlatform/DrawOnCanvasPage.dart';
import 'package:flutter_training/fromOtherPlatform/FetchAPIPage.dart';
import 'package:flutter_training/fromOtherPlatform/FormInputPage.dart';
import 'package:flutter_training/fromOtherPlatform/ListViewPage.dart';
import 'package:flutter_training/fromOtherPlatform/ResourcePage.dart';
import 'package:flutter_training/fromOtherPlatform/RouteArgumentPage.dart';

import 'codelabs/FavoriteWordListPage.dart';
import 'codelabs/layout/StackLayoutPage.dart';
import 'codelabs/WordListPage.dart';
import 'fromOtherPlatform/GestureDetectionPage.dart';
import 'fromOtherPlatform/LifecyclePage.dart';
import 'fromOtherPlatform/UpdateWidgetPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Demo'),
      routes: <String, WidgetBuilder> {
        // Tutorial
        "layout_practice_1": (BuildContext context) => LayoutPractice1Page(title: "Layout Practice 1",),
        "stack_layout": (BuildContext context) => StackLayoutPage(),
        "layout_basic": (BuildContext context) => LayoutBasicPage(title: "Layout Basic",),
        "first_app_1": (BuildContext context) => WordListPage(title: "Word List",),
        "first_app_2": (BuildContext context) => FavoriteWordListPage(title: "Favorite Word List",),
        "build_beautiful_uis": (BuildContext context) => SimpleChatPage(title: "Simple Chat",),

        // form Other Platform
        "update_widget": (BuildContext context) => UpdateWidgetPage(),
        "add_remove_component": (BuildContext context) => AddRemoveComponentPage(),
        "animate_widget": (BuildContext context) => AnimateWidgetPage(),
        "draw_on_canvas": (BuildContext context) => DrawOnCanvasPage(),
        "route_argument": (BuildContext context) => RouteArgumentPage(),
        "fetch_api": (BuildContext context) => FetchAPIPage(),
        "resource_page": (BuildContext context) => ResourcePage(),
        "lifecycle_page": (BuildContext context) => LifecyclePage(),
        "gesture_detection": (BuildContext context) => GestureDetectionPage(),
        "listview_page": (BuildContext context) => ListViewPage(),
        "form_input": (BuildContext context) => FormInputPage(),

        // Cookbook - Design
        "drawer_menu": (BuildContext context) => DrawerMenuPage(),
        "snackbar_page": (BuildContext context) => SnackBarPage(),
        "font_page": (BuildContext context) => FontPage(),
        "grid_orientation": (BuildContext context) => GridOrientationPage(),
        "custom_theme": (BuildContext context) => CustomThemePage(),
        "tab_page": (BuildContext context) => TabPage(),

        // Cookbook - Form
        "form_validation": (BuildContext context) => FormValidationPage(),
        "textfield_change": (BuildContext context) => TextFieldChangePage(),
        "focus_page": (BuildContext context) => FocusPage(),
        "swipe_item": (BuildContext context) => SwipeItemPage(),
        "grid_list": (BuildContext context) => GridListPage(),
        "horizontal_list": (BuildContext context) => HorizontalListPage(),
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
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          Text("Code Labs", style: Theme.of(context).textTheme.title,),
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
          Divider(color: Colors.red, thickness: 3.0,),

          Text("From another platform", style: Theme.of(context).textTheme.title),
          RaisedButton(
              onPressed: () {Navigator.of(context).pushNamed("update_widget"); },
              child: Text("Update Widget?")
          ),
          RaisedButton(
              onPressed: () {Navigator.of(context).pushNamed("add_remove_component"); },
              child: Text("Add or remove a component?")
          ),
          RaisedButton(
              onPressed: () {Navigator.of(context).pushNamed("animate_widget"); },
              child: Text("Animate Widget?")
          ),
          RaisedButton(
              onPressed: () {Navigator.of(context).pushNamed("draw_on_canvas"); },
              child: Text("Draw on Canvas?")
          ),
          CustomButton("Custom Button"),
          RaisedButton(
              onPressed: () {},
              child: Text("(Not yet) Start Activity Android, XIB Ios, send and receive Data")
          ),
          RaisedButton(
              onPressed: () {Navigator.of(context).pushNamed("route_argument"); },
              child: Text("Send, Receive Route Arguments")
          ),
          RaisedButton(
              onPressed: () {Navigator.of(context).pushNamed("fetch_api"); },
              child: Text("Async UI, Fetch API")
          ),
          RaisedButton(
              onPressed: () {Navigator.of(context).pushNamed("resource_page"); },
              child: Text("Project Structure & Resource")
          ),
          RaisedButton(
              onPressed: () {Navigator.of(context).pushNamed("lifecycle_page"); },
              child: Text("Widget Life Cycle")
          ),
          RaisedButton(
              onPressed: () {Navigator.of(context).pushNamed("gesture_detection"); },
              child: Text("Gesture Detection")
          ),
          RaisedButton(
              onPressed: () {Navigator.of(context).pushNamed("listview_page"); },
              child: Text("ListView")
          ),
          RaisedButton(
              onPressed: () {Navigator.of(context).pushNamed("form_input"); },
              child: Text("Form Input")
          ),
          RaisedButton(
              onPressed: () { },
              child: Text("(Not yet) Flutter plugins "
                  "- GPS "
                  "- access the camera "
                  "- log in with Facebook "
                  "- Firebase "
                  "- build custom native "
                  "- Shared Preferences "
                  "- SQLite "
                  "")
          ),
          Divider(color: Colors.red, thickness: 3.0,),

          Text("Cookbook", style: Theme.of(context).textTheme.title,),
          Text("Design", style: Theme.of(context).textTheme.subhead,),
          RaisedButton(
              onPressed: () {Navigator.of(context).pushNamed("drawer_menu"); },
              child: Text("Drawer Menu")
          ),
          RaisedButton(
              onPressed: () {Navigator.of(context).pushNamed("snackbar_page"); },
              child: Text("Snackbar")
          ),
          RaisedButton(
              onPressed: () {Navigator.of(context).pushNamed("font_page"); },
              child: Text("Custom Font")
          ),
          RaisedButton(
              onPressed: () {Navigator.of(context).pushNamed("grid_orientation"); },
              child: Text("Update UI base Orientation (GridView)")
          ),
          RaisedButton(
              onPressed: () {Navigator.of(context).pushNamed("custom_theme"); },
              child: Text("Custom Theme - Color + Font Style")
          ),
          RaisedButton(
              onPressed: () {Navigator.of(context).pushNamed("tab_page"); },
              child: Text("Tab")
          ),

          Text("Form", style: Theme.of(context).textTheme.subhead,),
          RaisedButton(
              onPressed: () {Navigator.of(context).pushNamed("form_validation"); },
              child: Text("Form Validation")
          ),
          RaisedButton(
              onPressed: () {Navigator.of(context).pushNamed("textfield_change"); },
              child: Text("Text Changed")
          ),
          RaisedButton(
              onPressed: () {Navigator.of(context).pushNamed("focus_page"); },
              child: Text("Focus Field")
          ),
          RaisedButton(
              onPressed: () {Navigator.of(context).pushNamed("focus_page"); },
              child: Text("Focus Field")
          ),

          Text("List", style: Theme.of(context).textTheme.subhead,),
          RaisedButton(
              onPressed: () {Navigator.of(context).pushNamed("swipe_item"); },
              child: Text("Swipe Item")
          ),
          RaisedButton(
              onPressed: () {Navigator.of(context).pushNamed("grid_list"); },
              child: Text("Grid List")
          ),
          RaisedButton(
              onPressed: () {Navigator.of(context).pushNamed("horizontal_list"); },
              child: Text("Horizontal List")
          ),
          Divider(color: Colors.red, thickness: 3.0,),

        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String label;

  CustomButton(this.label);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        child: Column(
          children: <Widget>[
            Icon(Icons.access_alarm),
            Text(label),
          ],
        ),
        margin: EdgeInsets.all(16),
      ),

      onTap: () {
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text('Tap'),
        ));
      },
    );
  }
}
