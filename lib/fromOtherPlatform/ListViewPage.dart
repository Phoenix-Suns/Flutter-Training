import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  ListViewPage({Key key}) : super(key: key);

  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
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
        title: Text("List View"),
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int position) {
            return getRow(context, position);
          })
    );
  }

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
  }
}