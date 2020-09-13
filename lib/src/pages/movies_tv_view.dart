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
        title: Text(
            'NetFlix? Hulu? Amazon Prime? What types of Movies & TV Shows Interest you?'),
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
          AddTopic('Hulu', null,
              "https://pics.paypal.com/00/c/gifts/us/hulu.jpg", true),
          AddTopic(
              'Netflix',
              null,
              "https://play-lh.googleusercontent.com/myH_2mHzOUqr0UVHUvsAMANT2a-XFvxxiuob8g49KjdVHU87lU8xujwg1BgTTKId-w",
              true),
          AddTopic(
              'Reality',
              null,
              "https://miro.medium.com/max/504/1*Rot1mCyS-1-1moJ0zo71EA.jpeg",
              true),
          AddTopic('Romantic', null,
              "https://www.jacksonandperkins.com/images/l/v2191_1.jpg", true),
          AddTopic(
              'Superheroes',
              null,
              "https://static.tvtropes.org/pmwiki/pub/images/rsz_superheroes2.png",
              true),
        ],
      ),
    );
  }
}
