
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_flare/common/story-mode/page2.dart';
import 'package:flutter_flare/common/story-mode/summary.dart';
import 'package:flutter_flare/hangman/hangman.dart';

class Page13 extends StatefulWidget {
  final bool isHacked;
  const Page13({Key key, this.isHacked}) : super(key: key);

  @override
  State<Page13> createState() => _Page13State();
}

class _Page13State extends State<Page13> {
  String image='assets/easy_password_scenario_final-013.png';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override

  Widget build(BuildContext context) {
  
    return widget.isHacked == false? Scaffold (
      body: Container(
          child : Image.asset(image,      
       fit: BoxFit.fill,
       height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,)
   
      )
    ):
     Scaffold (
      body: Container(
          child : Image.asset(image,      
       fit: BoxFit.fill,
       height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,)
      
      ),
      
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
           Navigator.push(
            context, MaterialPageRoute(builder: (context) => MyWidget()));
        },
      ),
    );
  }
}