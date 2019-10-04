import 'package:flutter/material.dart';

class FontPage extends StatefulWidget {
  FontPage({Key key}) : super(key: key);

  @override
  _FontPageState createState() => _FontPageState();
}

class _FontPageState extends State<FontPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Font"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[

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
        ),
      ),
    );
  }
}