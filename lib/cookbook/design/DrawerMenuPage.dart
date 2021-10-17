import 'package:flutter/material.dart';

// https://flutter.dev/docs/cookbook/design/drawer
class DrawerMenuPage extends StatefulWidget {
  DrawerMenuPage({Key? key}) : super(key: key);

  @override
  _DrawerMenuPageState createState() => _DrawerMenuPageState();
}

class _DrawerMenuPageState extends State<DrawerMenuPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("Sample App"),
      ),

      // ===== Drawer Menu =====
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
            ),
            ListTile(
              title: Text('Close Menu'),
              onTap: () {
                // Update the state of the app.
                // ...
                // Then close the drawer.
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),

      body: Center(
        child: RaisedButton(
          child: Text("Open Drawer"),
          onPressed: () { _scaffoldKey.currentState?.openDrawer(); },
        ),
      ),
    );
  }
}