import 'package:flutter/material.dart';

class TabPage extends StatefulWidget {
  TabPage({Key key}) : super(key: key);

  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(
                icon: Icon(Icons.directions_bike),
                text: "Biker",
              ),
            ],
          ),
        ),

        body: TabBarView(
          children: [
            BottomTab(),
            Icon(Icons.directions_transit, size: 100,),
            Icon(Icons.directions_bike, size: 100,),
          ],
        ),
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