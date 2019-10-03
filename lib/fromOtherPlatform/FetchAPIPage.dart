import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FetchAPIPage extends StatefulWidget {
  FetchAPIPage({Key key}) : super(key: key);

  @override
  _AddRemoveComponentState createState() => _AddRemoveComponentState();
}

class _AddRemoveComponentState extends State<FetchAPIPage> {
  List items = [];

  /*Future<Void> loadData() async {
    String dataURL = "https://jsonplaceholder.typicode.com/posts";
    http.Response response = await http.get(dataURL);
    print(response);
    setState(() {
      items = json.decode(response.body);
    });
    return null;
  }*/
  // onRefresh: loadData,

  loadData() async {
    String dataURL = "https://jsonplaceholder.typicode.com/posts";
    http.Response response = await http.get(dataURL);
    print(response);
    setState(() {
      items = json.decode(response.body);
    });
  }

  showLoadingDialog() {
    return items.length == 0;
  }

  _buildListView() {
    // Refresh
    return RefreshIndicator(
      onRefresh: () { return loadData(); },
      child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int position) {
            return _buildRow(position);
          }),
    );
  }

  _buildBody() {
    if (showLoadingDialog()) {
      return _buildLoading();
    } else {
      return _buildListView();
    }
  }

  _buildLoading() {
    return Center(child: CircularProgressIndicator());
  }

  Widget _buildRow(int i) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Text("Row ${items[i]["title"]}"),
      decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 0.3))),
    );
  }

  @override
  void initState() {
    super.initState();

    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Fetch API"),
        ),
        body: _buildBody()
    );
  }
}
