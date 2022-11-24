import 'package:flutter/material.dart';
import 'package:flutter_flare/age.dart';
import 'package:flutter_flare/common/divergence.dart';
import 'package:flutter_flare/common/kids-section.dart';
import 'package:flutter_flare/common/shop.dart';
import 'package:flutter_flare/common/story-mode/page1.dart';
import 'package:flutter_flare/dashboard.dart';
import 'package:flutter_flare/hangman/hangman.dart';
import 'package:flutter_flare/morabaraba.dart';
import 'package:flutter_flare/onboarding.dart';
import 'package:flutter_flare/customise.dart';
import 'package:flutter_flare/pages/landing_page.dart';
import 'package:flutter_flare/splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
<<<<<<< HEAD
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color.fromRGBO(38,50,56,1),
        body: Dashboard()
      )
    );
=======
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Color.fromRGBO(38, 50, 56, 1),
            body: OnBoardingPage()));
>>>>>>> 478acb9147007ab3ae17f40900b9628014c9d382
  }
}
