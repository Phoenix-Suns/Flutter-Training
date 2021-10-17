import 'package:flutter/material.dart';

class GestureDetectionPage extends StatefulWidget {
  GestureDetectionPage({Key? key}) : super(key: key);

  @override
  _GestureDetectionState createState() => _GestureDetectionState();
}

class _GestureDetectionState extends State<GestureDetectionPage> {
  String _logText = "";

  addLog(String log) {
    print(log);
    setState(() {
      _logText = log + "\n" + _logText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample App"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[

            Expanded(
                child: Text(_logText)
            ),

            // ===== Gesture =====
            GestureDetector(
              child: Container(
                child: Text("touch me \n Long Pressed \n Swiped"),
                padding: EdgeInsets.all(50.0),
                color: Colors.greenAccent,
              ),
              onTap: () {
                addLog('Tapped');
              },
              onLongPress: () {
                addLog('Long Pressed');
              },
              onVerticalDragEnd: (DragEndDetails value) {
                addLog('Swiped Vertically');
              },
              onHorizontalDragEnd: (DragEndDetails value) {
                addLog('Swiped Horizontally');
              },
            )
          ],
        ),
      ),
    );
  }
}