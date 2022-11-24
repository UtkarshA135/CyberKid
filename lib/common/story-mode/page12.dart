
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_flare/common/story-mode/page13.dart';
import 'package:flutter_flare/common/story-mode/page14.dart';
import 'package:flutter_flare/common/story-mode/page2.dart';

class Page12 extends StatefulWidget {
  const Page12({Key key}) : super(key: key);

  @override
  State<Page12> createState() => _Page12State();
}

class _Page12State extends State<Page12> {
  String image='assets/easy_password_scenario_final-012.png';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
 
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
          content: new Text("Should David keep the same password?"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            Row(children:[
              TextButton(
              child: new Text("Yes"),
              onPressed: () {
                  Navigator.push(
            context, MaterialPageRoute(builder: (context) => Page14()));
              },
              ),
             TextButton(
              child: new Text("No"),
              onPressed: () {
                  Navigator.push(
            context, MaterialPageRoute(builder: (context) => Page13()));
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
 
 