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
    title: "Strong Passwords\n Lets Play",
    imagePath: "assets/img1.png",
    rank: "31",
    plays: "88",
    topics: fortniteTopics);
final internetSecurityForm = Forum(
    title: "Internet-Security \n Lets Play",
    imagePath: "assets/img2.png",
    rank: "17",
    plays: "88",
    topics: fortniteTopics
);
final thirdform = Forum(
    title: "Internet-Security \n Lets Play",
    imagePath: "assets/img3.png",
    rank: "17",
    plays: "88",
    topics: fortniteTopics
);

final fouthform = Forum(
    title: "Internet-Security \n Lets Play",
    imagePath: "assets/img4.png",
    rank: "17",
    plays: "88",
    topics: fortniteTopics
);
final forums = [
  strongLockForum,
  internetSecurityForm,
  thirdform,
  fouthform
];
