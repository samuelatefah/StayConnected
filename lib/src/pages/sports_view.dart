import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:stay_connected/src/pages/Widgets/add_topic.dart';
import 'package:stay_connected/src/pages/call.dart';

class SportsView extends StatefulWidget {
  @override
  _SportsViewState createState() => _SportsViewState();
}

class _SportsViewState extends State<SportsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('How do you Stay Physically Active'),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: [
          AddTopic(
            'Basketball',
            null,
            "https://bloximages.newyork1.vip.townnews.com/swnewsmedia.com/content/tncms/assets/v3/editorial/0/f6/0f69af9a-968e-5723-b868-ac1412842cf3/58b4414eb0a84.image.png?resize=400%2C319",
            true,
          ),
          AddTopic(
            'Baseball',
            null,
            "https://www.kaaltv.com/kaalimages/repository/2020-06/baseball-generic-photo.jpg",
            true,
          ),
          AddTopic(
            'Football',
            null,
            "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTTEtLTOw7eJupwuMSKMsW4lhVzEVX7avgmJg&usqp=CAU",
            true,
          ),
          AddTopic(
              'Soccer',
              null,
              "https://dehayf5mhw1h7.cloudfront.net/wp-content/uploads/sites/1399/2020/07/31140138/Soccer-ball_0.jpg",
              true),
          AddTopic(
              'Weight Lifting',
              null,
              "https://static01.nyt.com/images/2018/09/18/well/family/sub18weight/sub18weight-videoSixteenByNineJumbo1600.jpg",
              true),
        ],
      ),
    );
  }
}
