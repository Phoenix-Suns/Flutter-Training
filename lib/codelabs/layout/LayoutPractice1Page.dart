import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LayoutPractice1Page extends StatefulWidget {
  LayoutPractice1Page({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _LayoutPractice1PageState createState() => _LayoutPractice1PageState();
}

class _LayoutPractice1PageState extends State<LayoutPractice1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layout Practice 1"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon( Icons.account_circle,
                    size: 80,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Flutter McFlutter",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text("Experienced App Developer",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("123 Main Street",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text("(415) 555-0198",
                  style: TextStyle(
                    fontSize: 20
                  ),
                )
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Icon(Icons.people, size: 40,),
                Icon(Icons.people, size: 40,),
                Icon(Icons.people, size: 40,),
                Icon(Icons.people, size: 40,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
