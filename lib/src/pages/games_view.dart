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
        title: Text('Which Gamer are you?'),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: [
          AddTopic(
              'Nintendo Switch',
              null,
              "https://www.nintendo.com/content/dam/noa/en_CA/hardware/switch/nintendo-switch-new-package/gallery/bundle_color_console%20(3).jpg",
              true),
          AddTopic(
              'PC',
              null,
              "https://images-na.ssl-images-amazon.com/images/I/81rNjavDj3L._AC_SL1500_.jpg",
              true),
          AddTopic(
              'Playstation',
              null,
              "https://cdn.mos.cms.futurecdn.net/DPiA4pJvzSPW7ujEB7tBu6-1200-80.jpg",
              true),
          AddTopic(
              'Xbox',
              null,
              "https://i.pcmag.com/imagery/reviews/01IC0Vsz5N7nWcYIr69Ri4H-4.1569481393.fit_scale.size_1028x578.jpg",
              true),
        ],
      ),
    );
  }
}
