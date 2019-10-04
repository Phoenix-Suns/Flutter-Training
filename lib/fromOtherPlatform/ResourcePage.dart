import 'package:flutter/material.dart';

class ResourcePage extends StatefulWidget {
  ResourcePage({Key key}) : super(key: key);

  @override
  _ResourcePageState createState() => _ResourcePageState();
}

class _ResourcePageState extends State<ResourcePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resource"),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[

          // ===== Image =====
          Text("Image Resource",
            style: Theme.of(context).textTheme.title,
          ),
          Text("From Resource"),
          Image.asset('images/unicorn.png',
            width: 200,
            height: 200,
          ),
          Text("From Network"),
          Image.network('https://urlzs.com/RsqCz',
            width: 200,
            height: 200,
          ),
          Text("Gif"),
          Image.asset('images/giphy.gif',
            width: 200,
            height: 200,
          ),
          Divider(),

          // ===== Font =====
          Text("Font",
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            'Normal- Tôi ngắm nhìn cơn bão, quá đẹp nhưng thật hãi hùng.',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Grenze',
              color: Colors.blue,
            ),
          ),
          Text(
            'Italic- Tôi ngắm nhìn cơn bão, quá đẹp nhưng thật hãi hùng.',
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'Grenze',
                color: Colors.red,
                fontStyle: FontStyle.italic
            ),
          ),
          Text(
            'Bold- Tôi ngắm nhìn cơn bão, quá đẹp nhưng thật hãi hùng.',
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'Grenze',
                color: Colors.green,
                fontWeight: FontWeight.bold
            ),
          ),
          Text(
            'Bold + Italic- Tôi ngắm nhìn cơn bão, quá đẹp nhưng thật hãi hùng.',
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'Grenze',
                color: Colors.purple,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic
            ),
          ),
        ],
      )
    );
  }
}