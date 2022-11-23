import 'package:flutter_flare/model/topic.dart';

class Forum {
  final String title;
  final String imagePath;
  final String rank;
  final List<Topic> topics;
  final String plays;

  Forum({this.title, this.imagePath, this.rank,this.plays, this.topics});
}

final strongLockForum = Forum(
    title: "Strong Passwords",
    imagePath: "assets/stonglock.png",
    rank: "31",
    plays: "88",
    topics: fortniteTopics);


final forums = [
  strongLockForum
];
