import 'package:flutter/material.dart';

class RouteArgumentPage extends StatefulWidget {
  RouteArgumentPage({Key? key}) : super(key: key);

  @override
  _RouteArgumentState createState() => _RouteArgumentState();
}

class _RouteArgumentState extends State<RouteArgumentPage> {
  MyArguments _resultMessage = MyArguments("");  // Route Result
  final TextEditingController _messageController = TextEditingController();

  _gotoChild(BuildContext context) async {
    // 1 ====== Send Message to Child =====
    final message = _messageController.text;
    print(message);
    // Navigator.of(context).pushNamed("child_page", arguments: MyArguments(message));

    // 1.1 ====== Method 2: Send Message to Child =====
    /*var result = await Navigator.of(context).push(
      // Tự tạo Route
      MaterialPageRoute(
          builder: (context) => ChildPage(receiveMessage: MyArguments(message)),
      ),
    );*/


    // 2 ===== Receive Argument =====
    var result = await Navigator.of(context).push(
      // Tự tạo Route
      MaterialPageRoute(
          builder: (context) => ChildPage(),
          settings: RouteSettings(arguments: MyArguments(message))
      ),
    );
    print(result);
    setState(() {
      _resultMessage = result as MyArguments;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Send & Receive Argument'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _messageController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
                labelText: "Messages",
                hintText: "What do you want to send"
              ),
            ),
            RaisedButton(
              onPressed: () {this._gotoChild(context);},
              child: Text("Send Message >>"),
            ),

            Divider(),
            Text("Callback Message:"),
            Text(_resultMessage.message,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}


//#region Child Page
class MyArguments {
  final String message;
  MyArguments(this.message);
}

class ChildPage extends StatefulWidget {
  // 1.1
  /*final MyArguments receiveMessage;
  ChildPage({Key key, this.receiveMessage}) : super(key: key);*/
  ChildPage({Key? key}) : super(key: key);

  @override
  _ChildPageState createState() => _ChildPageState();
}

class _ChildPageState extends State<ChildPage> {
  final TextEditingController _messageController = TextEditingController();
  MyArguments _receiveMessage = MyArguments("");

  _gotoChild() {
    // 2 ===== Send Back =====
    final message = _messageController.text;
    print(message);
    Navigator.of(context).pop(MyArguments(message));
  }

  @override
  Widget build(BuildContext context) {

    // 1.1 ===== Method 2: receive Message =====
    // _receiveMessage = widget.receiveMessage;

    // 1 ===== Receive Argument ======
    _receiveMessage = ModalRoute.of(context)?.settings?.arguments as MyArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Child'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[

            Text("Receive Message:"),
            Text(_receiveMessage.message,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Divider(),

            TextField(
              controller: _messageController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
              ),
            ),
            RaisedButton(
              onPressed: () {this._gotoChild();},
              child: Text("<< Send Back"),
            )
          ],
        ),
      ),
    );
  }
}
//#endregion