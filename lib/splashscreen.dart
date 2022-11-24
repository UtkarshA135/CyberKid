import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_flare/common/storyMode.dart';
import 'package:flutter_flare/onboarding.dart';
class SpalshScreen extends StatefulWidget {
  @override
  _SpalshScreenState createState() => _SpalshScreenState();
}
class _SpalshScreenState extends State<SpalshScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
          ()=>Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder:
                                                          (context) => 
                                                          OnBoardingPage()
                                                         )
                                       )
         );
  }
   @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child:Center(
        child: Image.asset('assets/one.png')
      )
    );
  }
}
