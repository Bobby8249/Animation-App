import 'package:flutter/material.dart';

class Mentor extends StatefulWidget {
  @override
  _MentorState createState() => _MentorState();
}

class _MentorState extends State<Mentor> with SingleTickerProviderStateMixin {
  var myanicon;
  var animation;

  @override
  void initState() {
    super.initState();
    myanicon = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    print(myanicon);
    animation = CurvedAnimation(parent: myanicon, curve: Curves.easeIn)
      ..addListener(() {
        setState(() {
          print(animation.value);
        });
      });
    print(animation);
    myanicon.forward();
    print(myanicon);
  }

  @override
  void dispose() {
    super.dispose();
    myanicon.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ARTH 2020'),
        backgroundColor: Colors.red.shade700,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, "home");
          },
          child: Container(
            height: 600 * animation.value,
            width: 350 * animation.value,
            margin: EdgeInsets.all(10),
            child: Image.asset('assets/mentor.png'),
            decoration: BoxDecoration(
                color: Colors.black12,
                border: Border.all(width: 10, color: Colors.grey.shade800),
                borderRadius: BorderRadius.circular(20)),
          ),
        ),
      ),
    );
  }
}
