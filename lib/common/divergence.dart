import 'package:flutter/material.dart';
import 'package:flutter_flare/common/divergence_card.dart';
import 'package:flutter_flare/common/forum_card.dart';
import 'package:flutter_flare/common/storyMode.dart';
import 'package:flutter_flare/common/tab_text.dart';
import 'package:flutter_flare/common/three-men-morris.dart';
import 'package:flutter_flare/model/forum.dart';
import 'package:flutter_flare/pages/landing_page.dart';
import 'package:flutter_flare/styleguide/curvepainter.dart';

class Divergence extends StatefulWidget {
  final String category;
  const Divergence({Key key, this.category}) : super(key: key);

  @override
  State<Divergence> createState() => _DivergenceState();
}

class _DivergenceState extends State<Divergence> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
       Card(
          
            child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                 child: CustomPaint(
          painter: CurvePainter(),
              child: Column(
                children:[ 
              Expanded(child: InkWell(
  onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => LandingPage(category:widget.category))), // Image tapped
  splashColor: Colors.white10, // Splash color over image
  child: Ink.image(
    fit: BoxFit.fill, // Fixes border issues
    width: 600,
    height: 600,
    image : AssetImage(
                "assets/age_range-001.png",
                
              ),
   
  ),
),
              
            ),
              Expanded(child:Text("Story Mode " , style: TextStyle(fontWeight: FontWeight.w600, fontSize:20))
            )]))),

                Expanded(
                  child: CustomPaint(
          painter: CurvePainter(),
              child: Column(
                children:[ 
                       Expanded(child: InkWell(
  onTap: () =>Navigator.push(
              context, MaterialPageRoute(builder: (context) => WebViewExample())), // Image tapped
  splashColor: Colors.white10, // Splash color over image
  child: Ink.image(
    fit: BoxFit.fill, // Fixes border issues
    width: 600,
    height: 600,
    image : AssetImage(
                "assets/morabaraba.png",
                
              ),
   
  ),
),),
            Expanded(child:  Text("Play a New Game" , style: TextStyle(fontWeight: FontWeight.w600, fontSize:20)))
              ])),
            
       )]),
          ));
}
}