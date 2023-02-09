import 'package:flutter_training/codelabs/layout/layout_basic_page.dart';
import 'package:flutter_training/codelabs/layout/layout_practice1_page.dart';
import 'package:flutter_training/codelabs/simple_chat_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_training/cookbook/design/custom_theme_page.dart';
import 'package:flutter_training/cookbook/design/drawer_menu_page.dart';
import 'package:flutter_training/cookbook/design/font_page.dart';
import 'package:flutter_training/cookbook/design/grid_orientation_page.dart';
import 'package:flutter_training/cookbook/design/snackbar_page.dart';
import 'package:flutter_training/cookbook/design/tab_page.dart';
import 'package:flutter_training/cookbook/form/form_validation_page.dart';
import 'package:flutter_training/cookbook/form/focus_page.dart';
import 'package:flutter_training/cookbook/form/textfield_change_page.dart';
import 'package:flutter_training/cookbook/list/grid_list_page.dart';
import 'package:flutter_training/cookbook/list/horizontal_list_page.dart';
import 'package:flutter_training/cookbook/list/multi_type_list_page.dart';
import 'package:flutter_training/cookbook/list/swipe_item_page.dart';
import 'package:flutter_training/fromOtherPlatform/add_remove_component_page.dart';
import 'package:flutter_training/fromOtherPlatform/animate_widget_page.dart';
import 'package:flutter_training/fromOtherPlatform/draw_on_canvas_page.dart';
import 'package:flutter_training/fromOtherPlatform/fetch_api_page.dart';
import 'package:flutter_training/fromOtherPlatform/form_input_page.dart';
import 'package:flutter_training/fromOtherPlatform/listview_page.dart';
import 'package:flutter_training/fromOtherPlatform/resource_page.dart';
import 'package:flutter_training/fromOtherPlatform/route_argument_page.dart';

import 'codelabs/favorite_word_list_page.dart';
import 'codelabs/layout/stack_layout_page.dart';
import 'codelabs/word_list_page.dart';
import 'fromOtherPlatform/gesture_detection_page.dart';
import 'fromOtherPlatform/lifecycle_page.dart';
import 'fromOtherPlatform/update_widget_page.dart';

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
        "multitype_list": (BuildContext context) => MultiTypePage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          Text("Code Labs", style: Theme.of(context).textTheme.subtitle1,),
          ElevatedButton(
            child: const Text("Basic Flutter layout concepts"),
            onPressed: () { _navigateTo("layout_basic"); },
          ),
          ElevatedButton(
            child: const Text("Write Your First Flutter App, part 1"),
            onPressed: () { _navigateTo("first_app_1"); },
          ),
          ElevatedButton(
            child: const Text("Write Your First Flutter App, part 2"),
            onPressed: () { _navigateTo("first_app_2"); },
          ),
          ElevatedButton(
            child: const Text("Building Beautiful UIs with Flutter"),
            onPressed: () { _navigateTo("build_beautiful_uis"); },
          ),
          ElevatedButton(
            child: const Text("Building a Cupertino app with Flutter"),
            onPressed: () { _navigateTo(""); },
          ),
          const Divider(color: Colors.red, thickness: 3.0,),

          Text("From another platform", style: Theme.of(context).textTheme.subtitle1),
          ElevatedButton(
              onPressed: () {Navigator.of(context).pushNamed("update_widget"); },
              child: const Text("Update Widget?")
          ),
          ElevatedButton(
              onPressed: () {Navigator.of(context).pushNamed("add_remove_component"); },
              child: const Text("Add or remove a component?")
          ),
          ElevatedButton(
              onPressed: () {Navigator.of(context).pushNamed("animate_widget"); },
              child: const Text("Animate Widget?")
          ),
          ElevatedButton(
              onPressed: () {Navigator.of(context).pushNamed("draw_on_canvas"); },
              child: const Text("Draw on Canvas?")
          ),
          CustomButton("Custom Button"),
          ElevatedButton(
              onPressed: () {},
              child: const Text("(Not yet) Start Activity Android, XIB Ios, send and receive Data")
          ),
          ElevatedButton(
              onPressed: () {Navigator.of(context).pushNamed("route_argument"); },
              child: const Text("Send, Receive Route Arguments")
          ),
          ElevatedButton(
              onPressed: () {Navigator.of(context).pushNamed("fetch_api"); },
              child: const Text("Async UI, Fetch API")
          ),
          ElevatedButton(
              onPressed: () {Navigator.of(context).pushNamed("resource_page"); },
              child: const Text("Project Structure & Resource")
          ),
          ElevatedButton(
              onPressed: () {Navigator.of(context).pushNamed("lifecycle_page"); },
              child: const Text("Widget Life Cycle")
          ),
          ElevatedButton(
              onPressed: () {Navigator.of(context).pushNamed("gesture_detection"); },
              child: const Text("Gesture Detection")
          ),
          ElevatedButton(
              onPressed: () {Navigator.of(context).pushNamed("listview_page"); },
              child: const Text("ListView")
          ),
          ElevatedButton(
              onPressed: () {Navigator.of(context).pushNamed("form_input"); },
              child: const Text("Form Input")
          ),
          ElevatedButton(
              onPressed: () { },
              child: const Text("(Not yet) Flutter plugins "
                  "\n- GPS "
                  "\n- access the camera "
                  "\n- log in with Facebook "
                  "\n- Firebase "
                  "\n- build custom native "
                  "\n- Shared Preferences "
                  "\n- SQLite "
                  "")
          ),
          const Divider(color: Colors.red, thickness: 3.0,),

          Text("Cookbook", style: Theme.of(context).textTheme.subtitle1,),
          Text("Design", style: Theme.of(context).textTheme.headline6,),
          ElevatedButton(
              onPressed: () {Navigator.of(context).pushNamed("drawer_menu"); },
              child: Text("Drawer Menu")
          ),
          ElevatedButton(
              onPressed: () {Navigator.of(context).pushNamed("snackbar_page"); },
              child: Text("Snackbar")
          ),
          ElevatedButton(
              onPressed: () {Navigator.of(context).pushNamed("font_page"); },
              child: Text("Custom Font")
          ),
          ElevatedButton(
              onPressed: () {Navigator.of(context).pushNamed("grid_orientation"); },
              child: Text("Update UI base Orientation (GridView)")
          ),
          ElevatedButton(
              onPressed: () {Navigator.of(context).pushNamed("custom_theme"); },
              child: Text("Custom Theme - Color + Font Style")
          ),
          ElevatedButton(
              onPressed: () {Navigator.of(context).pushNamed("tab_page"); },
              child: Text("Tab")
          ),

          Text("Form", style: Theme.of(context).textTheme.headline6,),
          ElevatedButton(
              onPressed: () {Navigator.of(context).pushNamed("form_validation"); },
              child: Text("Form Validation")
          ),
          ElevatedButton(
              onPressed: () {Navigator.of(context).pushNamed("textfield_change"); },
              child: Text("Text Changed")
          ),
          ElevatedButton(
              onPressed: () {Navigator.of(context).pushNamed("focus_page"); },
              child: Text("Focus Field")
          ),
          ElevatedButton(
              onPressed: () {Navigator.of(context).pushNamed("focus_page"); },
              child: Text("Focus Field")
          ),

          Text("List", style: Theme.of(context).textTheme.headline6,),
          ElevatedButton(
              onPressed: () {Navigator.of(context).pushNamed("swipe_item"); },
              child: Text("Swipe Item")
          ),
          ElevatedButton(
              onPressed: () {Navigator.of(context).pushNamed("grid_list"); },
              child: Text("Grid List")
          ),
          ElevatedButton(
              onPressed: () {Navigator.of(context).pushNamed("horizontal_list"); },
              child: Text("Horizontal List")
          ),
          ElevatedButton(
              onPressed: () {Navigator.of(context).pushNamed("multitype_list"); },
              child: Text("Multi Type List")
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
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Tap'),
        ));
      },
    );
  }
}
