
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_flare/common/story-mode/page2.dart';

class Page1 extends StatefulWidget {

  const Page1({Key key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  String image='assets/easy_password_scenario_final-001.png';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override

  Widget build(BuildContext context) {
  
    return Scaffold (
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
            context, MaterialPageRoute(builder: (context) => Page2()));
        },
      ),
    
      
     
   ) ;
  }
}