import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
 

class Shop extends StatelessWidget {
 
  // This widget is the root of your application
  final List<String> arr = ['assets/avatars-001.png','assets/avatars-002.png', 'assets/avatars-003.png','assets/avatars-004.png','assets/avatars-005.png','assets/avatars-006.png'];
  _launchURL() async {
  const url = 'https://www.youtube.com/watch?v=yiKeLOKc1tw';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: Center(
            child: Text(
              'Shop ',
              style: TextStyle(
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),
        ),
        body: Container(
          child: Column(children: [
         
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            TextButton(child: Text("400 💰", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)), onPressed: ()=>{}, style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightBlue))),
            SizedBox(width:10),
            TextButton(child: Text("Get More 📸", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)), onPressed: ()=> _launchURL, style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightBlue))),
          ]),

          SizedBox(height:20),
          Expanded(child:  GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          shrinkWrap: true,
          children: List.generate(6, (index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Flexible( child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(arr[index]),
                      fit: BoxFit.cover,
                    ),
                    borderRadius:
                    BorderRadius.all(Radius.circular(20.0),),
                  ),
                )),
              );
            },),
          )
      ),
          ])
    )));
    
  }
  
}