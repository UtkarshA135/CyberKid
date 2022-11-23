import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ThreeMenMorris extends StatefulWidget {
  const ThreeMenMorris({Key key}) : super(key: key);

  @override
  State<ThreeMenMorris> createState() => _ThreeMenMorrisState();
}

class _ThreeMenMorrisState extends State<ThreeMenMorris> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Image.asset('assets/three-men-morris.png')
      )
    );
  }
}