import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:stay_connected/src/pages/Widgets/add_topic.dart';
import 'package:stay_connected/src/pages/call.dart';

class BeautyView extends StatefulWidget {
  @override
  _BeautyViewState createState() => _BeautyViewState();
}

class _BeautyViewState extends State<BeautyView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('How do you Beautify Yourself?'),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: [
          AddTopic(
              'Fashion',
              null,
              "https://welldoing.org/storage/app/uploads/public/551/fbb/77b/551fbb77b7e2a577416026.jpg",
              true),
          AddTopic(
              'Makeup',
              null,
              "https://post.healthline.com/wp-content/uploads/2020/04/makeup_composition_overhead-1200x628-facebook-1200x628.jpg",
              true),
        ],
      ),
    );
  }
}
