import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:translator/translator.dart';

import 'package:flutter_flare/password_scenario.dart';
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


  String animationType = "idle";
  String hintTextUsername = "Howdy Captain Africa!!, Give yourself a name";
  String hintTextPassword = "Never forget to lock 🔐 your essentials";
  String selectlanguages = "Select Language here =>";
  String submit = "Submit";
  bool isHacked = false;
  final passwordController = TextEditingController();
  final passwordFocusNode = FocusNode();
    GoogleTranslator translator = GoogleTranslator();
  var output;
  String dropdownValue;

  static const Map<String, String> lang = {
    "Hindi": "hi",
    "English": "en",
    "Urdu": "ur",
    "French" : "fr",
    "Arabic" : "ar",
    "Portuguese" : "pt",
    "Swahili" : "sw"
  };

  void trans() {
    translator
        .translate(hintTextUsername, to: "$dropdownValue")
        .then((value) {
      setState(() {
        hintTextUsername = value.toString();
      });
    });
    translator
        .translate(hintTextPassword, to: "$dropdownValue")
        .then((value) {
      setState(() {
        hintTextPassword = value.toString();
      });
    });
       translator
        .translate(selectlanguages, to: "$dropdownValue")
        .then((value) {
      setState(() {
        selectlanguages = value.toString();
      });
    });
       translator
        .translate(submit, to: "$dropdownValue")
        .then((value) {
      setState(() {
        submit = value.toString();
      });
    });
  }
  String validatePassword(String value) {
    RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (value.isEmpty) {
      return 'Please enter password';
    } else {
      if (!regex.hasMatch(value)) {
        return 'Enter valid password';
      } else {
        return null;
      }
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    passwordFocusNode.addListener((){
      if(passwordFocusNode.hasFocus){
        setState(() {
          animationType="test";
        });
      }else{
        setState(() {
          animationType="idle";
        });
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  new Scaffold(
    body:Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[

        //just for vertical spacing
        SizedBox(
          height: 60,
          width: 200,
        )    ,


        //space for teddy actor
        Flexible ( child:Center(
          child: Container(
            height: 300,
            width: 300,
            
            child: isHacked==false  ? CircleAvatar(
              child: ClipOval(
                child: new FlareActor("assets/teddy_test.flr", alignment: Alignment.center, fit: BoxFit.contain, animation: animationType,),
              ),
                  backgroundColor: Colors.white,

            )
            :  CircleAvatar(
              child: ClipOval(
                child: new Image.asset("assets/hacked.gif", alignment: Alignment.center, fit: BoxFit.contain),
              ),
                  backgroundColor: Colors.white,

            )
            
          ),
          
        )),

        //just for vertical spacing
        SizedBox(
          height: 80,
          width: 10,
        )    ,


        //container for textfields user name and password
       Flexible ( child: Container(
          height: 140,
          width: 350,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.white
          ),

          child: Column(
            children: <Widget>[

              TextFormField(
                decoration: InputDecoration(border: InputBorder.none, hintText: hintTextUsername, contentPadding: EdgeInsets.all(20), 
                ),
                style: TextStyle(fontSize: 13), 
              ),

              Divider(),

              TextFormField(
                obscureText: true,
                decoration: InputDecoration(border: InputBorder.none, hintText: hintTextPassword, contentPadding: EdgeInsets.all(20)),
                controller: passwordController,
                focusNode: passwordFocusNode,
                style: TextStyle(fontSize: 13), 
              ),
          
            ],
        ) )),
        Flexible(
                child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(selectlanguages),
                DropdownButton<String>(
                  value: dropdownValue,
                  icon: Icon(Icons.arrow_downward),
                  iconSize: 13,
                  elevation: 5,
                  style: TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue = newValue;
                      trans();
                    });
                  },
                  items: lang
                      .map((string, value) {
                        return MapEntry(
                          string,
                          DropdownMenuItem<String>(
                            value: value,
                            child: Text(string),
                          ),
                        );
                      })
                      .values
                      .toList(),
                )])),
    
    
        //container for raised button
       Flexible ( child: Container(
          width: 350,
          height: 70,
          padding: EdgeInsets.only(top: 20),
          child: ElevatedButton(
            
              child: Text(submit, style: TextStyle(color: Colors.white),),

              onPressed: () {
                if(validatePassword(passwordController.text)==null){
                  setState(() {
                    animationType = "success";
                    isHacked = false;
                  });

                }else{
                setState(() {
                  animationType = "fail";
                });
                 Timer(Duration(seconds: 2), () { // <-- Delay here
                   setState(() {
                    isHacked = true; // <-- Code run after delay
                     });
                  });
               
 
                }
                 Timer(Duration(seconds: 5), () { // <-- Delay here
                           Navigator.push(
            context, MaterialPageRoute(builder: (context) => PassWordScenario(isHacked:isHacked)));

                  });
              }
          ),
       ))


      ],
    ));
  }
}


