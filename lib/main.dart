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
      routes: <String, WidgetBuilder>{
        // Tutorial
        'layout_practice_1': (BuildContext context) => LayoutPractice1Page(
              title: 'Layout Practice 1',
            ),
        'stack_layout': (BuildContext context) => StackLayoutPage(),
        'layout_basic': (BuildContext context) => LayoutBasicPage(
              title: 'Layout Basic',
            ),
        'first_app_1': (BuildContext context) => WordListPage(
              title: 'Word List',
            ),
        'first_app_2': (BuildContext context) => FavoriteWordListPage(
              title: 'Favorite Word List',
            ),
        'build_beautiful_uis': (BuildContext context) => SimpleChatPage(
              title: 'Simple Chat',
            ),

        // form Other Platform
        'update_widget': (BuildContext context) => UpdateWidgetPage(),
        'add_remove_component': (BuildContext context) =>
            AddRemoveComponentPage(),
        'animate_widget': (BuildContext context) => AnimateWidgetPage(),
        'draw_on_canvas': (BuildContext context) => DrawOnCanvasPage(),
        'route_argument': (BuildContext context) => RouteArgumentPage(),
        'fetch_api': (BuildContext context) => FetchAPIPage(),
        'resource_page': (BuildContext context) => ResourcePage(),
        'lifecycle_page': (BuildContext context) => LifecyclePage(),
        'gesture_detection': (BuildContext context) => GestureDetectionPage(),
        'listview_page': (BuildContext context) => ListViewPage(),
        'form_input': (BuildContext context) => FormInputPage(),

        // Cookbook - Design
        'drawer_menu': (BuildContext context) => DrawerMenuPage(),
        'snackbar_page': (BuildContext context) => SnackBarPage(),
        'font_page': (BuildContext context) => FontPage(),
        'grid_orientation': (BuildContext context) => GridOrientationPage(),
        'custom_theme': (BuildContext context) => CustomThemePage(),
        'tab_page': (BuildContext context) => TabPage(),

        // Cookbook - Form
        'form_validation': (BuildContext context) => FormValidationPage(),
        'textfield_change': (BuildContext context) => TextFieldChangePage(),
        'focus_page': (BuildContext context) => FocusPage(),
        'swipe_item': (BuildContext context) => SwipeItemPage(),
        'grid_list': (BuildContext context) => GridListPage(),
        'horizontal_list': (BuildContext context) => HorizontalListPage(),
        'multitype_list': (BuildContext context) => MultiTypePage(),
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
  void _navigateTo(String routeName) {
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
          Header1Text('Code Labs'),
          TextButton(
            label: 'Basic Flutter layout concepts (Align, Gravity, Text)',
            onPressed: () {
              _navigateTo('layout_basic');
            },
          ),
          TextButton(
            label: 'Write Your First Flutter App, part 1 (Word List)',
            onPressed: () {
              _navigateTo('first_app_1');
            },
          ),
          TextButton(
            label: 'Write Your First Flutter App, part 2 (Favorite Word List)',
            onPressed: () {
              _navigateTo('first_app_2');
            },
          ),
          TextButton(
            label: 'Building Beautiful UIs with Flutter (Simple Chat)',
            onPressed: () {
              _navigateTo('build_beautiful_uis');
            },
          ),
          TextButton(
            label: 'Building a Cupertino app with Flutter',
            onPressed: () {
              _navigateTo('');
            },
          ),
          Header1Text('From another platform'),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('update_widget');
              },
              label: 'Update Widget?'),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('add_remove_component');
              },
              label: 'Add or remove a component?'),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('animate_widget');
              },
              label: 'Animate Widget?'),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('draw_on_canvas');
              },
              label: 'Draw on Canvas?'),
          CustomImageButton('Custom Button'),
          TextButton(
              onPressed: () {},
              label:
                  '(Not yet) Start Activity Android, XIB Ios, send and receive Data'),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('route_argument');
              },
              label: 'Send, Receive Route Arguments'),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('fetch_api');
              },
              label: 'Async UI, Fetch API'),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('resource_page');
              },
              label: 'Project Structure & Resource'),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('lifecycle_page');
              },
              label: 'Widget Life Cycle'),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('gesture_detection');
              },
              label: 'Gesture Detection'),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('listview_page');
              },
              label: 'ListView'),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('form_input');
              },
              label: 'Form Input'),
          TextButton(
              onPressed: () {},
              label: '(Not yet) Flutter plugins '
                  '\n- GPS '
                  '\n- access the camera '
                  '\n- log in with Facebook '
                  '\n- Firebase '
                  '\n- build custom native '
                  '\n- Shared Preferences '
                  '\n- SQLite '
                  ''),
          Header1Text('Cookbook'),
          Header2Text('Design'),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('drawer_menu');
              },
              label: 'Drawer Menu'),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('snackbar_page');
              },
              label: 'Snackbar'),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('font_page');
              },
              label: 'Custom Font'),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('grid_orientation');
              },
              label: 'Update UI base Orientation (GridView)'),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('custom_theme');
              },
              label: 'Custom Theme - Color + Font Style'),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('tab_page');
              },
              label: 'Tab'),
          Header2Text('Form'),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('form_validation');
              },
              label: 'Form Validation'),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('textfield_change');
              },
              label: 'Text Changed'),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('focus_page');
              },
              label: 'Focus Field'),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('focus_page');
              },
              label: 'Focus Field'),
          Header2Text('List'),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('swipe_item');
              },
              label: 'Swipe Item'),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('grid_list');
              },
              label: 'Grid List'),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('horizontal_list');
              },
              label: 'Horizontal List'),
          TextButton(
              onPressed: () {
                //Navigator.of(context).pushNamed('multitype_list');
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MultiTypePage(),
                  ),
                );
              },
              label: 'Multi Type List'),
          Header1Text("Next"),
        ],
      ),
    );
  }
}

class CustomImageButton extends StatelessWidget {
  final String label;

  CustomImageButton(this.label);

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

class TextButton extends StatelessWidget {
  final String? label;
  final Function()? onPressed;

  TextButton({this.label, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        child: Row(
          children: <Widget>[
            Icon(
              Icons.add,
              size: 16,
            ),
            SizedBox(
              width: 8,
            ),
            Flexible(
              child: Text(
                label ?? "",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
        margin: EdgeInsets.symmetric(vertical: 8),
      ),
      onTap: onPressed,
    );
  }
}

class Header1Text extends StatelessWidget {
  final String? label;

  Header1Text(this.label);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(
            color: Colors.grey,
            thickness: 1.0,
          ),
          Text(
            label ?? "",
            style: TextStyle(
              fontSize: 24,
              fontFamily: 'Futura',
              color: Colors.indigo,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(vertical: 8),
    );
  }
}

class Header2Text extends StatelessWidget {
  final String? label;

  Header2Text(this.label);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 4,
          ),
          Text(
            label ?? "",
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Futura',
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(vertical: 8),
    );
  }
}
