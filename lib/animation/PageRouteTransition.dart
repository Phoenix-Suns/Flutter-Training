import 'package:flutter/material.dart';

class PageRouteTransition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageRouteTransition'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go Page 2'),
          onPressed: () {
            Navigator.of(context).push(_createRoute());
          }
        ),
      ),
    );
  }
}

// Tạo Route cho Page2
Route _createRoute() {
  return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => Page2(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        //return child; // Defaut animation

        // ----- Tạo Animation -----
        var begin = Offset(0.0, 1.0); // bottom screen
        var end = Offset.zero;  // top screen (0.0, 0.0)
        var tween = Tween(begin: begin, end: end);  // Single Animation

        

        var offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,);
      }
  );
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Center(
        child: Text('Page 2'),
      ),
    );
  }
}