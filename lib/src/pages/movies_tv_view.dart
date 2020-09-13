import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:stay_connected/src/pages/Widgets/add_topic.dart';
import 'package:stay_connected/src/pages/call.dart';

class MoviesTVView extends StatefulWidget {
  @override
  _MoviesTVViewState createState() => _MoviesTVViewState();
}

class _MoviesTVViewState extends State<MoviesTVView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'What types of Movies & TV Shows Interest you?',
          style: TextStyle(
            fontSize: 14,
          ),
        ),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: [
          AddTopic(
              'Comedy',
              null,
              "https://m.media-amazon.com/images/G/01/seo/siege-lists/best-comedy-audiobooks-social.jpg",
              true),
          AddTopic(
            'Hulu',
            null,
            "https://www.lefthudson.com/wp-content/uploads/2019/11/solid-green-background-luxury-solid-backgrounds-image-wallpaper-cave-ideas-of-solid-green-background.jpg",
            true,
          ),
          AddTopic(
              'Netflix',
              null,
              "https://dwglogo.com/wp-content/uploads/2019/02/Netflix_N_logo.png",
              true),
          AddTopic(
              'Reality',
              null,
              "https://miro.medium.com/max/504/1*Rot1mCyS-1-1moJ0zo71EA.jpeg",
              true),
          AddTopic(
            'Romantic',
            null,
            "https://www.jacksonandperkins.com/images/l/v2191_1.jpg",
            true,
          ),
          AddTopic(
              'Superhero',
              null,
              "https://static.tvtropes.org/pmwiki/pub/images/rsz_superheroes2.png",
              true),
        ],
      ),
    );
  }
}
