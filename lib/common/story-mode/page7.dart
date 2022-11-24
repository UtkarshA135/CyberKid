
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_flare/common/story-mode/page2.dart';
import 'package:flutter_flare/common/story-mode/page8.dart';

class Page7 extends StatefulWidget {

  const Page7({Key key}) : super(key: key);

  @override
  State<Page7> createState() => _Page7State();
}

class _Page7State extends State<Page7> {
  String image='assets/easy_password_scenario_final-007.png';
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
            context, MaterialPageRoute(builder: (context) => Page8()));
        },
      ),
    );
  }
}