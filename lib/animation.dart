import 'package:flutter/material.dart';

class HeroAnimation extends StatefulWidget {
  @override
  _HeroState createState() => _HeroState();
}

class _HeroState extends State<HeroAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: !_isanimated
            ? _unAnimated(context)
            : _animated(
                context,
              ));
  }

  Widget _unAnimated(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: 'imageHero',
            child: Image(
              image: AssetImage('images/batman.jpeg'),
              height: 400,
              width: 300,
            ),
          ),
        ),
        onTap: () {
          setState(() {
            _isanimated = true;
          });
          ;
        },
      ),
    );
  }

  Widget _animated(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: 'imageHero',
            child: Image(
              image: AssetImage('images/batman.jpeg'),
              height: 600,
              width: 400,
            ),
          ),
        ),
        onTap: () {
          setState(() {
            _isanimated = false;
          });
        },
      ),
    );
  }

  bool _isanimated = false;
}
