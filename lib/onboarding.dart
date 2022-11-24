import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_flare/login.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();
    var audio = AudioPlayer();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    audio.play('http://119.226.104.170/Rsoft5140/66119514-20200506-183433-1588770273.71547.mp3');
  }
    @override
  void dispose() {
audio.stop();   
 super.dispose();
  }
  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => LoginScreen()),
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

    const pageDecoration = const PageDecoration(
          
            contentMargin: const EdgeInsets.symmetric(horizontal: 10),
            fullScreen: true,
            bodyFlex: 2,
            imageFlex: 1,
          
    );

    return IntroductionScreen(
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
          image: _buildImage('cyber_krish-001.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "",
          body: "",
          image: _buildImage('cyber_krish-002.png'),
          decoration: pageDecoration,
        ),
             PageViewModel(
          title: "",
          body: "",
          image: _buildImage('cyber_krish-003.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "",
          body: "",
          image: _buildImage('cyber_krish-004.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "",
          body: "",
          image: _buildImage('cyber_krish-005.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "",
          body: "",
          image: _buildImage('cyber_krish-006.png'),
          decoration: pageDecoration,
        ),
          PageViewModel(
          title: "",
          body: "",
          image: _buildImage('cyber_krish-007.png'),
          decoration: pageDecoration,
        ),
          PageViewModel(
          title: "",
          body: "",
          image: _buildImage('cyber_krish-008.png'),
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
    );
  }
}
