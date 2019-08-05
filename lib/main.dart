import 'package:flutter/material.dart';
import 'animation/PageRouteTransition.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _showPageRouteTransition() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PageRouteTransition())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            RaisedButton(
              child: Text('Animate a page route transition: Hiệu ứng Chuyển trang'),
              onPressed: _showPageRouteTransition,
            )
          ],
        ),
      ),
    );
  }
}
