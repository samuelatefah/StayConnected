import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:stay_connected/src/pages/Widgets/add_topic.dart';
import 'package:stay_connected/src/pages/call.dart';

class MusicView extends StatefulWidget {
  @override
  _MusicViewState createState() => _MusicViewState();
}

class _MusicViewState extends State<MusicView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('What type of Music do you Vibe to?'),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: [
          AddTopic(
            'Classical',
            null,
            "https://cdn.trendhunterstatic.com/thumbs/classical-music.jpeg",
            true,
          ),
          AddTopic(
              'Country',
              null,
              "https://thumbs-prod.si-cdn.com/Kr7fmssxyrIr9dPbfSF-gYg36NM=/800x600/filters:no_upscale():focal(228x320:229x321)/https://public-media.si-cdn.com/filer/51/09/5109a304-abb5-46e7-a942-058d6620db08/country_music.jpg",
              true),
          AddTopic(
              'Pop',
              null,
              "https://www.songbirdsmusicartdancecenter.com/wp-content/uploads/2019/09/My-Post-14-1024x1024-350x350.png",
              true),
          AddTopic(
              'Rap',
              null,
              "https://thesource.com/wp-content/uploads/2019/06/D9E7WCXW4AA-ip3.jpg",
              true),
        ],
      ),
    );
  }
}
