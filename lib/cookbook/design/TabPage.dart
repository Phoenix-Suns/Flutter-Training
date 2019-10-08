import 'package:flutter/material.dart';

// https://medium.com/flutteropen/flutter-widgets-12-tabbarview-tabbar-4cdc2112991a
// https://flutter.dev/docs/cookbook/design/tabs
class TabPage extends StatefulWidget {
  TabPage({Key key}) : super(key: key);

  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {

  // Simple Tab
  List<Widget> _tabNormal() => [
    Tab(icon: Icon(Icons.directions_car)),
    Tab(icon: Icon(Icons.directions_transit)),
    Tab(
      icon: Icon(Icons.directions_bike),
      text: "Biker",
    ),
  ];

  // Tab with text + icon
  List<Widget> _tabTwoParameters() => [
    Tab(
      text: "Home",
      icon: Icon(Icons.home),
    ),
    Tab(text: "Articles", icon: Icon(Icons.book)),
    Tab(
      text: "User",
      icon: Icon(Icons.account_box),
    ),
  ];

  // Custom Header Tab
  List<Widget> _tabChildParameters() => [
    Tab(
      child: Container(
        alignment: Alignment.center,
        constraints: BoxConstraints.expand(),
        color: Colors.yellow,
        child: Text("Home"),
      ),
    ),
    Tab(
      child: Container(
        alignment: Alignment.center,
        constraints: BoxConstraints.expand(),
        color: Colors.deepOrange,
        child: Text("Articles"),
      ),
    ),
    Tab(
      child: Container(
        alignment: Alignment.center,
        constraints: BoxConstraints.expand(),
        color: Colors.green,
        child: Text("User"),
      ),
    ),
  ];

  // Scroll Tab
  List<Widget> _tabScroll() => [
    Tab(
      child: Container(
        alignment: Alignment.center,
        constraints: BoxConstraints.expand(width: 100),
        color: Colors.green,
        child: Text("Home"),
      ),
    ),
    Tab(
      child: Container(
        alignment: Alignment.center,
        constraints: BoxConstraints.expand(width: 100),
        color: Colors.blue,
        child: Text("Articles"),
      ),
    ),
    Tab(
      child: Container(
        alignment: Alignment.center,
        constraints: BoxConstraints.expand(width: 100),
        color: Colors.red,
        child: Text("User"),
      ),
    ),
    Tab(
      child: Container(
        alignment: Alignment.center,
        constraints: BoxConstraints.expand(width: 100),
        color: Colors.purple,
        child: Text("Add"),
      ),
    ),
    Tab(
      child: Container(
        alignment: Alignment.center,
        constraints: BoxConstraints.expand(width: 100),
        color: Colors.yellow,
        child: Text("Post"),
      ),
    ),
    Tab(
      child: Container(
        alignment: Alignment.center,
        constraints: BoxConstraints.expand(width: 100),
        color: Colors.brown,
        child: Text("Comments"),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            // Scroll theo chiều ngang
            isScrollable: true,

            //tabs: _tabChildParameters(),
            //tabs: _tabScroll(),
            tabs: _tabTwoParameters(),

            // ===== Label =====
/*            labelColor: Colors.red,
            labelPadding: EdgeInsets.symmetric(vertical: 10),
            labelStyle: TextStyle(fontSize: 20),
            unselectedLabelColor: Colors.blue,
            unselectedLabelStyle: TextStyle(fontSize: 14),*/

            // ===== Tab Selector =====
//            indicatorColor: Colors.purple,
//            indicatorWeight: 10,
//            indicatorSize: TabBarIndicatorSize.label,
//            indicatorPadding: EdgeInsets.symmetric(horizontal: 10),

            // ===== Custom Tab Selector Layout =====
            /*indicator: UnderlineTabIndicator(
              borderSide: BorderSide(color: Colors.purple, width: 4),
              insets: EdgeInsets.symmetric(horizontal: 20),
            ),*/
            // 7 màu
            /*indicator: ShapeDecoration(
              shape: BeveledRectangleBorder(
                  side: BorderSide(color: Colors.greenAccent),
                  borderRadius: BorderRadius.circular(30)),
              gradient: SweepGradient(
                colors: [Colors.yellow, Colors.purple, Colors.red, Colors.greenAccent, Colors.blue],
              ),
            ),*/
          ),
        ),

        body: TabBarView(
          children: [
            Tab1Content(),
            Icon(Icons.directions_transit, size: 100,),
            Icon(Icons.directions_bike, size: 100,),
//            Icon(Icons.directions_bike, size: 100,),
//            Icon(Icons.directions_bike, size: 100,),
//            Icon(Icons.directions_bike, size: 100,),
          ],
        ),
      ),
    );
  }
}

/*TabBar({
  Key key,
  @required this.tabs,
  this.controller,
  this.isScrollable = false,
  this.indicatorColor,
  this.indicatorWeight = 2.0,
  this.indicatorPadding = EdgeInsets.zero,
  this.indicator,
  this.indicatorSize,
  this.labelColor,
  this.labelStyle,
  this.labelPadding,
  this.unselectedLabelColor,
  this.unselectedLabelStyle,
  this.onTap,
})*/

/*Tab({
  Key key,
  this.text,
  this.icon,
  this.child,
})*/

class Tab1Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: Column(
        children: <Widget>[
          Text("nghia"),

        ],
      ),
    );
  }
}

class BottomTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TabBar(
          tabs: [
            Tab(icon: Icon(Icons.directions_car)),
            Tab(icon: Icon(Icons.directions_transit)),
            Tab(icon: Icon(Icons.directions_bike),),
          ],
        ),
        TabBarView(
          children: [
            Icon(Icons.directions_car, size: 100,),
            Icon(Icons.directions_transit, size: 100,),
            Icon(Icons.directions_bike, size: 100,),
          ],
        ),
      ],
    );
  }

}