import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:stay_connected/src/pages/Widgets/add_topic.dart';
import 'package:stay_connected/src/pages/call.dart';

class CookingView extends StatefulWidget {
  @override
  _CookingViewState createState() => _CookingViewState();
}

class _CookingViewState extends State<CookingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('What is your Favorite Cooking Skill?'),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: [
          AddTopic(
              'Baking',
              null,
              "https://bakeorbreak.com/wp-content/uploads/2020/09/rye_chocolate_chip_cookies05061k-480x360.jpg",
              true),
          AddTopic(
              'Cooking',
              null,
              "https://c4.wallpaperflare.com/wallpaper/358/377/179/meat-food-steak-wood-wallpaper-preview.jpg",
              true),
        ],
      ),
    );
  }
}
