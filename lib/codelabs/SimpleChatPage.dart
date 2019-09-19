import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class SimpleChatPage extends StatefulWidget {
  SimpleChatPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SimpleChatPageState createState() => _SimpleChatPageState();
}

class _SimpleChatPageState extends State<SimpleChatPage> with TickerProviderStateMixin {
  final TextEditingController _textEditingController = TextEditingController();
  final List<ChatMessage> _messages = <ChatMessage>[];
  bool _isComposing = false;  // Đang soạn thảo, hiện send button

  // Chỗ Soạn tin
  Widget _buildTextComposer() {
    // tint color for All Icon
    return new IconTheme(
        data: new IconThemeData(color: Theme.of(context).accentColor),
        child: new Container(
          // symmetric: Đối xứng
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            child: new Row(
              children: <Widget>[
                // Fill All Row
                new Flexible(
                  child: new TextField(
                    controller: _textEditingController,
                    onSubmitted: _handleSubmitted,
                    onChanged: (String text) {
                      setState(() {
                        _isComposing = text.length > 0;
                      });
                    },
                    decoration: new InputDecoration.collapsed(
                        hintText: "Send a messsage"
                    ),
                  ),
                ),
                new Container(
                  margin: new EdgeInsets.symmetric(horizontal: 4.0),
                  child: Theme.of(context).platform == TargetPlatform.iOS ?
                  // Ios -> TextButton
                  new CupertinoButton(
                    child: new Text("Send"),
                    onPressed: _isComposing
                        ? () => _handleSubmitted(_textEditingController.text)
                        : null,
                  ) :
                  new IconButton(
                    icon: new Icon(Icons.send),
                    // Show/ Hide Click
                    onPressed: _isComposing ? () =>
                        _handleSubmitted(_textEditingController.text) : null,
                  ),
                )
              ],
            ))
    );
  }

  void _handleSubmitted(String text) {
    _textEditingController.clear();
    setState(() {
      _isComposing = false;
    });

    // Add Message to list
    ChatMessage message = new ChatMessage(
        text: text,
        animationController: new AnimationController(
            vsync: this,  // Ngăn Animation ko cần thiết
            duration: new Duration(milliseconds: 700)
        )
    );
    setState(() {
      _messages.insert(0, message);
    });

    message.animationController.forward();  // Animation Status
  }

  @override
  void dispose() {
    // Dừng Animation, khi Widget Dispose
    for (ChatMessage message in _messages) {
      message.animationController.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Friendly CC"),
        // Đổ bóng
        elevation: Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 4.0,
      ),
      body: Container(
        child: new Column(
          children: <Widget>[
            new Flexible(
                child: new ListView.builder(
                  itemBuilder: (_, int index) => _messages[index],
                  itemCount: _messages.length,
                  padding: new EdgeInsets.all(8.0),
                  reverse: true,  // List từ dưới lên
                )
            ),
            new Divider(height: 1.0,),
            new Container(
              decoration: new BoxDecoration(color: Theme.of(context).cardColor),
              child: _buildTextComposer(),
            )
          ],
        ),
        // Border item
        decoration: Theme.of(context).platform == TargetPlatform.iOS
            ? new BoxDecoration(
            border: new Border(
                top: new BorderSide(color: Colors.grey[200])
            )
        )
            : null,
      ),
    );
  }
}

const String _name = "Your Name";

// Chat Row
class ChatMessage extends StatelessWidget {

  final String text;
  final AnimationController animationController;

  ChatMessage({this.text, this.animationController});

  @override
  Widget build(BuildContext context) {

    // Animation
    return new SizeTransition(
      sizeFactor: new CurvedAnimation(
          parent: animationController,
          curve: Curves.easeOut
      ),
      axisAlignment: 0.0,
      child: new Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        child: new Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Container(
              margin: const EdgeInsets.only(right: 16.0),
              // Ảnh tròn
              child: new CircleAvatar(child: new Text(_name[0]),),
            ),
            // Tự mở rộng (xuống hàng)
            Expanded(
              child: new Column(
                // Vị trí bắt đầu
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(_name, style: Theme.of(context).textTheme.subhead),
                  new Container(
                    margin: const EdgeInsets.only(top: 5.0),
                    child: new Text(text),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}
