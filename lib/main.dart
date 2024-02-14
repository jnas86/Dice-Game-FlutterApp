import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Barbouti',
            style: TextStyle(
                fontFamily: 'PermanentMarker',
                color: Colors.white
            ),
          ),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget{
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage>{

  int left_dice_number = 1;
  int right_dice_number = 1;


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                roll_the_dice();
              },
              child: Image.asset('images/dice$left_dice_number.png'),
            ),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                  roll_the_dice();
                },
                child: Image.asset('images/dice$right_dice_number.png')),
          ),
        ],
      ),
    );
  }

  void roll_the_dice(){
    setState(() {
      right_dice_number = Random().nextInt(6)+1;
      left_dice_number = Random().nextInt(6)+1;
    });
  }
}
