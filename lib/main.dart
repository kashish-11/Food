import 'package:flutter/material.dart';

import './screen1.dart';

void main() => runApp(food());

class food extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text('SPICY FLAVOUR'),
          ),
          body:
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('graphics/bg.jpg'),
                  opacity: 0.8,
                  fit: BoxFit.cover,
                ),
              ),
              child: screen1(),
            )
          ),
        );
  }
}