import 'package:flutter/material.dart';

class SwipeItemPage extends StatefulWidget {
  SwipeItemPage({Key key}) : super(key: key);

  @override
  _SwipeItemPageState createState() => _SwipeItemPageState();
}

class _SwipeItemPageState extends State<SwipeItemPage> {
  List items = <String>[];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 100; i++) {
      var item = "I'm $i";
      items.add(item);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Swipe Item"),
        ),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (BuildContext context, int position) {
              return getRow(context, position);
            })
    );
  }

  /*// Simple Item
  Widget getRow(BuildContext context, int position) {
    return InkWell(
      splashColor: Colors.red,
      child: Container(
        child: Text("Row $position",
          style: Theme.of(context).textTheme.title,
        ),
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 0.3))),
      ),
      onTap: () {
        setState(() {
          // Show Snackbar
          Scaffold.of(context).hideCurrentSnackBar();
          Scaffold.of(context).showSnackBar(
              SnackBar(content: Text("Row $position",),)
          );
        });
      },
    );
  }*/

  Widget getRow(BuildContext context, int position) {

    final item = items[position];

    // Giao diện bên trên
    final itemForeground = Container(
      padding: EdgeInsets.all(20.0),
      child: Text("$item",
        style: Theme.of(context).textTheme.title,
      ),
    );


    // Giao diện bên dưới
    final itemBackground = Container(
      color: Colors.red,
      child: Text("Swipe to Delete"),
    );


    // Click
    return InkWell(
      onTap: () {
        setState(() {
          // Show Snackbar
          Scaffold.of(context).hideCurrentSnackBar();
          Scaffold.of(context).showSnackBar(
              SnackBar(content: Text("Row $position",),)
          );
        });
      },

      child: Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: 0.3)),
        ),

        // ===== Swipe to Delete =====
        child: Dismissible(
          key: Key(item),
          child: itemForeground,
          background: itemBackground,
          onDismissed: (direction) {
            // ===== Remove Item =====
            setState(() {
              items.removeAt(position);
            });

            Scaffold.of(context).showSnackBar(SnackBar(content: Text("Removed $item")));
          },
        ),
      ),
    );
  }
}
