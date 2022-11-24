import 'package:flutter/material.dart';
import 'package:flutter_flare/common/divergence.dart';
import 'package:flutter_flare/age.dart';
import 'package:flutter_flare/customise.dart';
import 'package:flutter_flare/styleguide/colors.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key key}) : super(key: key);
  
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold (
      body: Container(
          child : Stack(
    alignment: Alignment.centerRight,
    children: <Widget>[
      Image(
        image: new AssetImage('assets/dashboard.gif'),
        fit: BoxFit.fill,
       height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
      ),
      Padding(
          padding: EdgeInsets.all(8.0),
          child: ElevatedButton(
             child: new Text("Lets start !!"),
             style: ButtonStyle(
              fixedSize: MaterialStateProperty.all(Size.fromHeight(50)),
              backgroundColor: MaterialStateProperty.all(Colors.blue[300])),
              onPressed: () =>  Navigator.push(
              context, MaterialPageRoute(builder: (context) => Customise())),
              
          )
      ),
    ]
)
   
      )
    );
  }
}