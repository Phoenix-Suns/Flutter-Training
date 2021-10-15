import 'package:flutter/material.dart';

class StackLayoutPage extends StatefulWidget {
  @override
  _StackLayoutPageState createState() => _StackLayoutPageState();
}

class _StackLayoutPageState extends State<StackLayoutPage> {
  _buildFit(StackFit fit) {
    return ColorfulContainer(
      height: 150,
      child: Stack(
        fit: fit,
        children: <Widget>[
          GreenBox(),
          RedBox(),
          BlueBox(),
        ],
      ),
    );
  }

  _buildAlign(AlignmentDirectional alignmentDirectional) {
    return ColorfulContainer(
      height: 150,
      child: Stack(
        alignment: alignmentDirectional,
        children: <Widget>[
          GreenBox(),
          RedBox(),
          BlueBox(),
        ],
      ),
    );
  }

  _buildPosition(double top, double bottom, double left, double right) {
    return ColorfulContainer(
      height: 150,
      child: Stack(
        children: <Widget>[
          Positioned(child: GreenBox(),
            top: top,
            bottom: bottom,
            left: left,
            right: right,
          ),
        ],
      ),
    );
  }

  _buildOverflow(Overflow overflow) {
    return ColorfulContainer(
      height: 50,
      width: 50,
      child: Stack(
        children: <Widget>[
          Positioned(child: BlueBox(),
            top: -20,
            right: 100,
          ),
        ],
        overflow: overflow,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Layout"),
      ),
      body: Container(
        color: Colors.grey[300],
        child: ListView(
          children: <Widget>[
            HeaderText("StackFit"),
            Text("StackFit.loose"),
            _buildFit(StackFit.loose),
            Text("StackFit.expand"),
            _buildFit(StackFit.expand),
            Divider(),

            HeaderText("AlignmentDirectional"),
            _buildAlign(AlignmentDirectional.bottomCenter),
            Divider(),

            HeaderText("Positioned"),
            _buildPosition(10, 20, 30, 50),
            Divider(),

            HeaderText("Overflow"),
            Text("Overflow.visible"),
            _buildOverflow(Overflow.visible),
            Text("Overflow.clip"),
            _buildOverflow(Overflow.clip),
            Divider(),
          ]
        ),
      ),
    );
  }
}

/// Container with Background
class ColorfulContainer extends StatelessWidget {
  ColorfulContainer({this.child, this.height, this.width});
  final Widget child;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: this.child,
      height: this.height,
      width: this.width,
      decoration: BoxDecoration(
          color: Colors.yellow[300],
          border: Border.all()
      ),
    );
  }

}

class BlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );
  }
}

class RedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.red,
        border: Border.all(),
      ),
    );
  }
}

class GreenBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.green,
        border: Border.all(),
      ),
    );
  }
}

class HeaderText extends StatelessWidget {
  HeaderText(this.text);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(this.text, style: Theme.of(context).textTheme.subtitle1,);
  }
}
