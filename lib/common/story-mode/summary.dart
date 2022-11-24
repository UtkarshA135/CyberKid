import 'package:flutter/material.dart';
import 'package:flutter_flare/hangman/hangman.dart';

//imported google's material design library
	/**Our App Widget Tree Starts Here**/
  class MyWidget extends StatefulWidget {
  const MyWidget({Key key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
	appBar: AppBar(
		title: const Text('Summary'),
		backgroundColor: Colors.blue[400],
		centerTitle: true,
	), //AppBar
	body: Center(
		/** Card Widget **/
		child: Card(
		elevation: 50,
		shadowColor: Colors.black,
		color: Colors.grey[100],
		child: SizedBox(
			width: 300,
			height: 500,
			child: Padding(
			padding: const EdgeInsets.all(20.0),
			child: Expanded(child: Column(
				children: [
				CircleAvatar(
					backgroundColor: Colors.green[500],
					radius: 108,
					child: const CircleAvatar(
					backgroundImage: AssetImage(
            'bad_password-001.png'
						), //NetworkImage
					radius: 100,
					)//CircleAvatar
				), //CircleAvatar
				const SizedBox(
					height: 10,
				), //SizedBox
				Text(
					"Password Protection",
					style: TextStyle(
					fontSize: 30,
					color: Colors.green[900],
					fontWeight: FontWeight.w500,
					), //Textstyle
				), //Text
				Expanded(child:const SizedBox(
					height: 30,
				),), //SizedBox
				Expanded(child:const Text(
					'In summary, passwords are still one of the main line of defense against cyber attacks, so it is the responsibility of the user to use a secure password and protect access to restricted systems and confidential data. Secure password is not necessarily a combination of multiple characters, it can be a mixture of words that make sense to you like EveningSamanthaAte2PanCake. Use of password managers is a convenient way to store, retrieve and update your passwords',
					style: TextStyle(
					fontSize: 15,
					color: Colors.grey,
					), //Textstyle
				), ),//Text
				Expanded(child:const SizedBox(
					height: 10,
				)), //SizedBox
				
				TextButton(child:Text("Take an interesting test, Now"), onPressed:()=>Navigator.push(
            context, MaterialPageRoute(builder: (context) => Hangman())))
				
      
			 //Column
			])), //Padding
		), //SizedBox
		), //Card
	//Center
    )));
  }}