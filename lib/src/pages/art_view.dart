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
        title: Text('How do you Express Creativity?'),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: [
          AddTopic(
              'Drawing',
              null,
              "https://img-a.udemycdn.com/course/750x422/2334082_be3d.jpg",
              true),
          AddTopic(
            'Painting',
            null,
            "https://media.timeout.com/images/103166739/image.jpg",
            true,
          ),
          AddTopic(
              'Photos',
              null,
              "https://www.digitalphotomentor.com/photography/2018/05/famous-photographs-Dorothea.Lange_.1936-migrant-mother-750x975.jpg",
              true),
        ],
      ),
    );
  }
}
