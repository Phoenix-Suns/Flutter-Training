import 'package:cookbook_animation/main.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class LayoutBasicPage extends StatefulWidget {
  LayoutBasicPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LayoutBasicPageState createState() => _LayoutBasicPageState();
}

class _LayoutBasicPageState extends State<LayoutBasicPage> {

  _buildRow() {
    return Row(
      children: <Widget>[
        BlueBox(),
        BlueBox(),
        BlueBox(),
      ],
    );
  }

  _buildColumn() {
    return Column(
      children: <Widget>[
        BlueBox(),
        BlueBox(),
        BlueBox(),
      ],
    );
  }

  _buildMainAxisSize(MainAxisSize mainAxisSize) {
    return ColorfulContainer(
      child: Row(
        mainAxisSize: mainAxisSize,
        children: <Widget>[
          BlueBox(),
          BlueBox(),
          BlueBox(),
        ],
      ),
    );
  }

  _buildMainAxisAlignment(MainAxisAlignment mainAxisAlignment) {
    return ColorfulContainer(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: mainAxisAlignment,
        children: <Widget>[
          BlueBox(),
          BlueBox(),
          BlueBox(),
        ],
      ),
    );
  }

  _buildCrossAxisAlignment(CrossAxisAlignment crossAxisAlignment) {
    return ColorfulContainer(
      child: Row(
        crossAxisAlignment: crossAxisAlignment,
        children: [
          BlueBox(),
          BiggerBlueBox(),
          BlueBox(),
          MediumText(),
          BigText(),
        ],
      ),
    );
  }

  _buildCrossAxisAlignmentBaseLine() {
    return ColorfulContainer(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: [
          MediumText(),
          BigText(),
        ],
      ),
    );
  }

  _buildCrossAxisAlignmentStretch() {
    return ColorfulContainer(
      height: 50,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          BlueBox(),
          BiggerBlueBox(),
          BlueBox(),
        ],
      ),
    );
  }

  _buildFlexible() {
    return ColorfulContainer(
      child: Row(
        children: [
          BlueBox(),
          // 1 Flexible = Tổng Flex chia ra = remainingSpace * (flex / totalOfAllFlexValues)
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: BlueBox(),
          ),
          Flexible(
            fit: FlexFit.loose,
            flex: 1,
            child: BlueBox(),
          ),
        ],
      ),
    );
  }

  _buildExpanded() {
    return ColorfulContainer(
      child: Row(
        children: <Widget>[
          BlueBox(),
          Expanded(child: BlueBox(),),
          Expanded(child: BlueBox(),),
        ],
      ),
    );
  }

  _buildSizedBox() {
    return ColorfulContainer(
      child: Row(
        children: <Widget>[
          BlueBox(),
          SizedBox(width: 100, child: BlueBox(),),
          // Create Space
          SizedBox(width: 100,),
          SizedBox(height: 50, width: 70, child: BlueBox(),),
        ],
      ),
    );
  }

  _buildSpacer() {
    return ColorfulContainer(
      child: Row(
        children: <Widget>[
          BlueBox(),
          // Create Space
          Spacer(flex: 1,),
          BlueBox(),
          BlueBox(),
        ],
      ),
    );
  }

  _buildText() {
    return ColorfulContainer(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              'Normal-',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Futura',
                color: Colors.blue,
              ),
            ),
            Text(
              'Bold-',
              style: TextStyle(
                fontSize: 50,
                fontFamily: 'Futura',
                color: Colors.green,
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
              'Italic-',
              style: TextStyle(
                fontSize: 40,
                fontFamily: 'Futura',
                color: Colors.red,
                fontStyle: FontStyle.italic
              ),
            ),
            Text(
              'Bold + Italic-',
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Futura',
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic
              ),
            ),
          ],
        )
    );
  }

  _buildIcon() {
    return ColorfulContainer(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Icon(
            Icons.widgets,
            size: 50,
            color: Colors.blue,
          ),
          Icon(
            Icons.access_alarm,
            size: 50,
            color: Colors.red,
          ),
        ],
      ),
    );
  }

  _buildImage() {
    return ColorfulContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network('https://urlzs.com/RsqCz',
            width: 100,
            height: 100,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        color: Colors.grey[300],
        child: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                HeaderText("Row/Column: (~LinearLayout orientation) Children Direction"),
                Text("Row: its Widget horizontally"),
                _buildRow(),
                Text("Column: its Widget vertically"),
                _buildColumn(),
                Divider(),

                HeaderText("mainAxisSize: (~match_parent ~ wrap_content)"),
                Text("mainAxisSize: MainAxisSize.max"),
                _buildMainAxisSize(MainAxisSize.max),
                Text("mainAxisSize: MainAxisSize.min"),
                _buildMainAxisSize(MainAxisSize.min),
                Divider(),

                HeaderText("mainAxisAlignment: ~Gravity"),
                Text("mainAxisAlignment: MainAxisAlignment.start"),
                _buildMainAxisAlignment(MainAxisAlignment.start),
                Text("mainAxisAlignment: MainAxisAlignment.end"),
                _buildMainAxisAlignment(MainAxisAlignment.end),
                Text("mainAxisAlignment: MainAxisAlignment.center"),
                _buildMainAxisAlignment(MainAxisAlignment.center),
                Text("mainAxisAlignment: MainAxisAlignment.spaceAround"),
                _buildMainAxisAlignment(MainAxisAlignment.spaceAround),
                Text("mainAxisAlignment: MainAxisAlignment.spaceBetween"),
                _buildMainAxisAlignment(MainAxisAlignment.spaceBetween),
                Text("mainAxisAlignment: MainAxisAlignment.spaceEvenly"),
                _buildMainAxisAlignment(MainAxisAlignment.spaceEvenly),
                Divider(),

                HeaderText("crossAxisAlignment:"),
                Text("crossAxisAlignment: CrossAxisAlignment.start"),
                _buildCrossAxisAlignment(CrossAxisAlignment.start),
                Text("crossAxisAlignment: CrossAxisAlignment.end"),
                _buildCrossAxisAlignment(CrossAxisAlignment.end),
                Text("crossAxisAlignment: CrossAxisAlignment.center"),
                _buildCrossAxisAlignment(CrossAxisAlignment.center),
                Text("crossAxisAlignment: CrossAxisAlignment.baseline"),
                _buildCrossAxisAlignmentBaseLine(),
                Text("crossAxisAlignment: CrossAxisAlignment.stretch"),
                _buildCrossAxisAlignmentStretch(),
                Divider(),

                HeaderText("Flexible widget: (~LayoutWeight, ~FlexBox)"),
                _buildFlexible(),
                Divider(),

                HeaderText("Expanded widget: (~LayoutWeight=1, Max Expanded Child)"),
                _buildExpanded(),
                Divider(),

                HeaderText("SizedBox widget: Resizing Child, Create Fixed Size Space"),
                _buildSizedBox(),
                Divider(),

                HeaderText("Spacer widget: Create Full Size Space"),
                _buildSpacer(),
                Divider(),

                HeaderText("Text Widget"),
                _buildText(),
                Divider(),

                HeaderText("Icon Widget"),
                _buildIcon(),
                Divider(),

                HeaderText("Image Widget"),
                _buildImage(),
                Divider(),

              ],
            ),
          ],
        ),
      ),
    );
  }
}

/// Container with Background
class ColorfulContainer extends StatelessWidget {
  ColorfulContainer({this.child, this.height});
  Widget child;
  double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow[300],
      child: this.child,
      height: this.height,
    );
  }

}

class BlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );
  }
}

class BiggerBlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );
  }
}

class HeaderText extends StatelessWidget {
  HeaderText(this.text);
  String text;

  @override
  Widget build(BuildContext context) {
    return Text(this.text, style: Theme.of(context).textTheme.title,);
  }
}

class BigText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("Big", style: Theme.of(context).textTheme.display2,);
  }
}

class MediumText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("Medium-qy", style: Theme.of(context).textTheme.body1,);
  }
}

