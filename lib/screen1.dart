// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dart:math';

import 'globals.dart' as globals ;

//import 'package:google_fonts/google_fonts.dart';

class screen1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return screenstate();
  }
}

// ignore: camel_case_types
class screenstate extends State<screen1> {
  List<String> _items = [
    "Phaal Curry",
    "Pork Vindaloo",
    "Kozhi Curry",
    "Chilli Beef",
    "Red Lentil Dahl",
    "Greenlip abalone with green coconut curry",
    "Turmeric Boiled Egg Curry",
    "Spinach Potato Curry",
    "Pakistani Zucchini",
    "Okra Curry",
    "Vegetable Korma",
    "Malai Kofta",
    "Mor Kulambhu",
    "Sanna",
    "Curd Rice",
  ];
 /* List _imgs = [
    "graphics/beansalad.jpg",
    "graphics/burger.jpg",
    "graphics/chicken.jpg",
    "graphics/dimsums.jpg",
    "graphics/donuts.jpg",
    "graphics/frenchtoast.jpg",
    "graphics/fries.jpg",
    "graphics/gnocchi.jpg",
    "graphics/lasagne.jpg",
    "graphics/pancake.jpg",
    "graphics/paneer.jpg",
    "graphics/pasta.jpg",
    "graphics/rice.jpg",
    "graphics/salad.jpg",
    "graphics/sandwich.jpg",
  ]; */

  //List<String> _taste = [
    //"Spicy",
    //"Sweet",
    //"Sour"
  //];

  List _choices = [
    "Super Spicy",
    "Spicy",
    "Neutral",
    "Less Spicy",
    "Not at all spicy",
  ];
  Random rand = new Random();

  int sp = 0;
  //var index = 0;

  void _ans(){
    //globals.index = rand.nextInt(25) ;
    setState(() =>
    globals.index = rand.nextInt(14) );
  }

  @override
  Widget build(BuildContext context) =>
  //? Text("QUIZ OVER") :
    Column(
        children: [
        Container(
            decoration: BoxDecoration(
              color: Colors.black,
            shape: BoxShape.rectangle,
                border: Border.all(
              color: Colors.amber,
              width: 2,
            )
            ),
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
              'Rate the spiciness of ' +
                  _items[(globals.index)] ,
              style:  TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.w300,
                  ),
            ), ),
            width: double.infinity,
            margin: EdgeInsets.only(top: 50, bottom: 80, left: 15, right: 15),

        ),
        ..._choices
            .map((aChoice) =>
            RaisedButton(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: BorderSide(
                  color: Colors.white,
                ),
              ),
              padding: EdgeInsets.all(10.0),
              color: Colors.black,
              textColor: Colors.white,

              child: Text(aChoice,),
              onPressed: () => _ans(),
            ))
         .toList()
      ]);
    }





