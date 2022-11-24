
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_flare/common/story-mode/page10.dart';
import 'package:flutter_flare/common/story-mode/page2.dart';

class Page9 extends StatefulWidget {
  const Page9({Key key}) : super(key: key);

  @override
  State<Page9> createState() => _Page9State();
}

class _Page9State extends State<Page9> {
  String image='assets/easy_password_scenario_final-009.png';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override

  Widget build(BuildContext context) {
  
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
           Navigator.push(
            context, MaterialPageRoute(builder: (context) => Page10()));
        },
      ),
    );
  }
}