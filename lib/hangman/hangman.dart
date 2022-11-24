import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HangMan extends StatefulWidget {
  const HangMan({Key key}) : super(key: key);

  @override
  State<HangMan> createState() => _HangManState();
}

class _HangManState extends State<HangMan> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text("HangMan"));
  }
}