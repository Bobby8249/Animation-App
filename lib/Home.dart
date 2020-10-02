import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

const List<String> labels = [
  "Rotate",
  "Fade",
  "Typer",
  "Typewriter",
  "Scale",
  "Colorize",
  "TextLiquidFill"
];

class Home extends StatefulWidget {
  final String title;
  Home({Key key, this.title}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> _textAnimationKit = [
    ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              width: 200,
              height: 100,
            ),
            Text(
              "BE",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(
              width: 200,
              height: 100,
            ),
            RotateAnimatedTextKit(
              onTap: () {
                print('tap event');
              },
              isRepeatingAnimation: true,
              totalRepeatCount: 10,
              text: ["awesome", "Optimisitic", "Different"],
              textStyle: TextStyle(fontFamily: "Horizon", fontSize: 40),
            ),
          ],
        )
      ],
    ),
    FadeAnimatedTextKit(
      text: ["do IT!", "do it RIGHT!!", "do it RIGHT NOW!!!"],
      textStyle: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      onTap: () {
        print('tap EVENT');
      },
    ),
    SizedBox(
      width: 250,
      child: TyperAnimatedTextKit(
        onTap: () {
          print("TYPER ANIMATED TEXT KIT");
        },
        text: [
          "About Our Mentor",
          "I am ready to take responsibility of every single learner who chooses to work & Learn Under my guidance with dedication. I want to create kings in the market who will not wander around for jobs but will be offered core positions from Top-Notch Companies globally."
              "The World Record Holder Mr. Vimal Daga is a Technologist, Philanthropist & A TEDx Speakerwho is dedicatedly working towards his vision-",
          "Making India, Future Ready",
          "by guiding students."
              "He is First in The entire world to become RedHat Certified Architect Level 22 along with RHCEA Level 7.",
          "He has expertise in uncountable Latest and High-end technologies namely Machine Learning, Deep Learning, Delphix, AppDynamics, Docker, DevOps, Cloud Computing, AWS, and many more."
        ],
        textStyle: TextStyle(fontSize: 30.0, fontFamily: "Bobbers"),
      ),
    ),
    ScaleAnimatedTextKit(
      onTap: () {
        print("Tap Event");
      },
      text: ["Think", "Build", "Ship"],
      textStyle: TextStyle(fontSize: 70.0, fontFamily: "Canterbury"),
    ),

    /// colors.length >= 2
    ColorizeAnimatedTextKit(
      onTap: () {
        print("Tap Event");
      },
      text: [
        "Larry Page",
        "Bill Gates",
        "Steve Jobs",
      ],
      textStyle: TextStyle(fontSize: 50.0, fontFamily: "Horizon"),
      colors: [
        Colors.purple,
        Colors.blue,
        Colors.yellow,
        Colors.red,
      ],
    ),

    Center(
      child: TextLiquidFill(
        text: 'LIQUIDY',
        waveColor: Colors.blueAccent,
        boxBackgroundColor: Colors.redAccent,
        textStyle: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
        boxHeight: 300,
      ),
    )
  ];
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        title: Text('ARTH 2020'),
        backgroundColor: Colors.red.shade700,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          padding: EdgeInsets.all(10),
          child: SizedBox(
            width: 400,
            child: TyperAnimatedTextKit(
                onTap: () {
                  print("Tap Event");
                },
                text: [
                  "About Our Mentor"
                      "I am ready to take responsibility of every single learner who chooses to work "
                      "& Learn Under my guidance with dedication."
                      " I want to create kings in the market"
                      " who will not wander around for jobs but will be offered core positions"
                      " from Top-Notch Companies globally."
                      "The World Record Holder Mr. Vimal Daga is a Technologist,"
                      " Philanthropist & A TEDx Speaker "
                      "who is dedicatedly working towards his vision-"
                      "Making India, Future Ready"
                      "by guiding students."
                      "He is First in The entire world"
                      " to become RedHat Certified Architect Level 22 "
                      "along with RHCEA Level 7."
                      "He has expertise in uncountable Latest and High-end technologies"
                      " namely Machine Learning, Deep Learning, Delphix, AppDynamics, "
                      "Docker, DevOps, Cloud Computing, AWS, and many more."
                ],
                textStyle: TextStyle(
                  fontSize: 20.0,
                  color: Color.fromRGBO(9, 255, 236, 1),
                  fontFamily: "Bobbers",
                ),
                textAlign: TextAlign.start,
                alignment: AlignmentDirectional.topStart // or Alignment.topLeft
                ),
          ),
        ),
      ),
    );
  }
}
