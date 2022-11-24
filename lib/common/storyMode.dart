import 'package:flutter/foundation.dart';
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
      MaterialPageRoute(builder: (_) => Hangman()),
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
   const bodyStyle = TextStyle(fontSize: 19.0);
     void _showDialog() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Help your Hero"),
          content: new Text("What would you do in this situation?"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
             TextButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
    const pageDecoration = const PageDecoration(
          
            contentMargin: const EdgeInsets.symmetric(horizontal: 10),
            fullScreen: true,
            bodyFlex: 2,
            imageFlex: 1,
          
    );

    return Scaffold(
      body : IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      globalHeader: Align(
        alignment: Alignment.topRight,
      ),
      globalFooter: SizedBox(
        width: double.infinity,
        height: 60,
        child: ElevatedButton(
          child: const Text(
            'Let\'s go right away!',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          onPressed: () => _onIntroEnd(context),
        ),
      ),
      pages: [
        PageViewModel(
          title: "",
          body: "",
          image: _buildImage('password-security/medium_dos-001.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "",
          body: "",
          image: _buildImage('password-security/medium_dos-002.png'),
          decoration: pageDecoration,
        ),
             PageViewModel(
          title: "",
          body: "",
          image: _buildImage('password-security/medium_dos-003.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "",
          body: "",
          image: _buildImage('password-security/medium_dos-004.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "",
          body: "",
          image: _buildImage('password-security/medium_dos-005.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "",
          body :"",
          image: _buildImage('password-security/medium_dos-006.png'),
          decoration: pageDecoration,
        ),
          PageViewModel(
          title: "",
          body: "",
          image: _buildImage('password-security/medium_dos-007.png'),
          decoration: pageDecoration,
        ),
      

      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: false,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: true,
      //rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back),
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.black87,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    ),
    floatingActionButton: FloatingActionButton(onPressed: (){_showDialog();})
    );
    
  }

  
}