
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_flare/common/story-mode/page2.dart';
import 'package:flutter_flare/common/story-mode/page6.dart';

class Page5 extends StatefulWidget {
  const Page5({Key key}) : super(key: key);

  @override
  State<Page5> createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  String image='assets/easy_password_scenario_final-005.png';
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
            context, MaterialPageRoute(builder: (context) => Page6()));
        },
      ),
    );
  }
}