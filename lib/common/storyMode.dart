import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_flare/hangman/hangman.dart';
import 'package:introduction_screen/introduction_screen.dart';

class StoryMode extends StatefulWidget {
  const StoryMode({Key key}) : super(key: key);

  @override
  State<StoryMode> createState() => _StoryModeState();
}

class _StoryModeState extends State<StoryMode> {
  final introKey = GlobalKey<IntroductionScreenState>();
   void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => HangMan()),
    );
  }
    Widget _buildImage(String assetName) {
    return Image.asset('assets/$assetName',      
       fit: BoxFit.fill,
       height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,);
  }
  @override



  Widget build(BuildContext context) {
    return Container(
  
    );
  }
}