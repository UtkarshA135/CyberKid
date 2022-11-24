import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter_flare/common/divergence.dart';
import 'package:flutter_flare/pages/landing_page.dart';


class Age extends StatefulWidget {
  const Age({Key key}) : super(key: key);

  @override
  State<Age> createState() => _AgeState();
}

class _AgeState extends State<Age> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Select your Age Range : '),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Card(
            child: Row(mainAxisSize: MainAxisSize.min, children: [
              Expanded(
              child: Column(
                children:[ 
              InkWell(
  onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => Divergence(category:"kid"))), // Image tapped
  splashColor: Colors.white10, // Splash color over image
  child: Ink.image(
    fit: BoxFit.cover, // Fixes border issues
    width: 200,
    height: 600,
    image : AssetImage(
                "assets/age_range-001.png",
                
              ),
   
  ),
),
              
              Text("Kid (5-10 years) " , style: TextStyle(fontWeight: FontWeight.w600, fontSize:20))
              ])),

                Expanded(
              child: Column(
                children:[ 
                        InkWell(
  onTap: () =>Navigator.push(
              context, MaterialPageRoute(builder: (context) => Divergence(category:"teen"))), // Image tapped
  splashColor: Colors.white10, // Splash color over image
  child: Ink.image(
    fit: BoxFit.cover, // Fixes border issues
    width: 200,
    height: 600,
    image : AssetImage(
                "assets/age_range-002.png",
                
              ),
   
  ),
),
              Text("Teen (10-16 years)" , style: TextStyle(fontWeight: FontWeight.w600, fontSize:20))
              ])),
            
            ]),
          ),
        ),
      );
  }
}