

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_flare/common/story-mode/page3.dart';
import 'package:flutter_flare/common/story-mode/page4.dart';

class Page2 extends StatefulWidget {
  
  const Page2({Key key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  String image='assets/easy_password_scenario_final-002.png';
  @override
  
   
  @override

  Widget build(BuildContext context) {
   void _showDialog() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Help your Hero"),
          content: new Text("Should David write down the password?"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            Row(children:[
              TextButton(
              child: new Text("Yes"),
              onPressed: () {
                  Navigator.push(
            context, MaterialPageRoute(builder: (context) => Page4()));
              },
              ),
             TextButton(
              child: new Text("No"),
              onPressed: () {
                  Navigator.push(
            context, MaterialPageRoute(builder: (context) => Page3()));
              },
            ),

          ],
            )]);
      }
    );
   }
    return
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
           _showDialog();
        },
      ),
    );
  }
}


