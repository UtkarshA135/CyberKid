import 'package:flutter/material.dart';
import 'package:flutter_flare/common/app_background.dart';
import 'package:flutter_flare/common/horizontal_tab_layout.dart';
import 'package:flutter_flare/common/kids-section.dart';
import 'package:flutter_flare/leader_board.dart';
class LandingPage extends StatefulWidget {
  final String category;
  const LandingPage({Key key, this.category}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return widget.category == "kid" ?  Scaffold ( body: KidSection(), floatingActionButton: FloatingActionButton(
        onPressed: ()=>Navigator.push(
            context, MaterialPageRoute(builder: (context) => LeaderBoardpage())))) :Scaffold (body:  HorizontalTabLayout(
            ),
            floatingActionButton: FloatingActionButton(
             onPressed: ()=>Navigator.push(
            context, MaterialPageRoute(builder: (context) => LeaderBoardpage())
            )));
  }
}
