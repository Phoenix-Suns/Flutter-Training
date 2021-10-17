import 'package:flutter/material.dart';

// https://flutter.dev/docs/cookbook/animation/page-route-animation

class PageRouteTransition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageRouteTransition'),
      ),
      body: Center(
        child: ElevatedButton(
            child: Text('Go Page 2'),
            onPressed: () {
              Navigator.of(context).push(_createRoute());
            }),
      ),
    );
  }
}

// Tạo Route cho Page2
Route _createRoute() {
  return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => Page2(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        //return child; // Defaut cookbook.animation

        // ----- Tạo Animation -----
        var begin = Offset(0.0, 1.0); // bottom screen
        var end = Offset.zero; // top screen (0.0, 0.0)
        //var end = Offset(0.5, 0.5);

        // --- Single Animation
        // var tween = Tween(begin: begin, end: end);
//        var offsetAnimation = cookbook.animation.drive(tween);
//        return SlideTransition(
//          position: offsetAnimation,
//          child: child,
//        );

        // --- Double cookbook.animation (tween + curve)
        //var curve = Curves.ease;
        //var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        //var offsetAnimation = cookbook.animation.drive(tween);
        //return SlideTransition(
//          position: offsetAnimation,
//          child: child,
//        );

        // --- Double cookbook.animation - Method 2 (tween + curve)
        var tween = Tween(begin: begin, end: end);
        var curve = Curves.ease;
        var curvedAnimation = CurvedAnimation(parent: animation, curve: curve);

        // var offsetAnimation = cookbook.animation.drive(tween);
        return SlideTransition(
          position: tween.animate(curvedAnimation),
          child: child,
        );
      });
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
