import 'package:flutter/material.dart';
import 'package:flutter_flare/common/forum_card.dart';
import 'package:flutter_flare/common/tab_text.dart';
import 'package:flutter_flare/model/forum.dart';

class KidSection extends StatefulWidget {
  @override
  _KidSectionState createState() => _KidSectionState();
}

class _KidSectionState extends State<KidSection>
    with SingleTickerProviderStateMixin {
  int selectedTabIndex = 2;
  AnimationController _controller;
  Animation<Offset> _animation;
  Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));
    _animation = Tween<Offset>(begin: Offset(0,0), end: Offset(-0.05,0)).animate(_controller);
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
  }

  playAnimation() {
    _controller.reset();
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Select your comic arena!!!"),
        centerTitle: true,
      ),
      body: Container(
      color: Colors.black,
       height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,

      child: Stack(
        children: <Widget>[
      
         
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(left:65.0),
            child: FutureBuilder(
              future: playAnimation(),
              builder: (context, snapshot) {
                return FadeTransition(
                  opacity: _fadeAnimation,
                  child: SlideTransition(
                    position: _animation,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: getList(selectedTabIndex),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      )),
    );
  }

  List<Widget> getList(index) {
    return [
      [
        ForumCard(forum: strongLockForum),
        ForumCard(forum: internetSecurityForm),
        ForumCard(forum: strongLockForum),
        ForumCard(forum: internetSecurityForm),
      ],
     [
        ForumCard(forum: strongLockForum),
        ForumCard(forum: internetSecurityForm),
        ForumCard(forum: strongLockForum),
        ForumCard(forum: internetSecurityForm),
      ],
     [
        ForumCard(forum: strongLockForum),
        ForumCard(forum: internetSecurityForm),
        ForumCard(forum: strongLockForum),
        ForumCard(forum: internetSecurityForm),
      ],
    ][index];
  }

  onTabTap(int index) {
    setState(() {
      selectedTabIndex = index;
    });
  }
}
