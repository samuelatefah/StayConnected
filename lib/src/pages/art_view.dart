import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:stay_connected/src/pages/Widgets/add_topic.dart';
import 'package:stay_connected/src/pages/call.dart';

class ArtView extends StatefulWidget {
  @override
  _ArtViewState createState() => _ArtViewState();
}

class _ArtViewState extends State<ArtView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Animals'),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: [
          AddTopic(
              'Cats',
              null,
              "https://undark.org/wp-content/uploads/2020/02/GettyImages-1199242002-1-scaled.jpg",
              true),
          AddTopic(
              'Dogs',
              null,
              "https://static01.nyt.com/images/2019/06/17/science/17DOGS/17DOGS-facebookJumbo.jpg",
              true),
        ],
      ),
    );
  }
}
