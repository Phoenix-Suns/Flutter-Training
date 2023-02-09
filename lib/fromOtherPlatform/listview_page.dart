import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  ListViewPage({Key? key}) : super(key: key);

  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  List items = <String>[];

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < 100; i++) {
      var item = "I'm $i";
      items.add(item);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int position) {
            return getRow(context, position);
          })
    );
  }

  // Simple Item
  Widget getRow(BuildContext context, int position) {
    final item = items[position];

    return InkWell(
      splashColor: Colors.red,
      child: Container(
        child: Text("$item",
          style: Theme.of(context).textTheme.subtitle1,
        ),
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 0.3))),
      ),
      onTap: () {
        setState(() {
          // Show Snackbar
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Row $position",),)
          );
        });
      },
    );
  }
}