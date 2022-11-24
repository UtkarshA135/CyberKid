import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_flare/common/story-mode/page1.dart';
import 'package:flutter_flare/hangman/hangman.dart';
import 'package:introduction_screen/introduction_screen.dart';

class StoryMode extends StatefulWidget {
  const StoryMode({Key key}) : super(key: key);

  @override
  State<StoryMode> createState() => _StoryModeState();
}

class _StoryModeState extends State<StoryMode> {

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body :  Page1());
    
    
  }

  
}