import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class StoryMode extends StatefulWidget {
  const StoryMode({Key key}) : super(key: key);

  @override
  State<StoryMode> createState() => _StoryModeState();
}

class _StoryModeState extends State<StoryMode> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("hi")
    );
  }
}