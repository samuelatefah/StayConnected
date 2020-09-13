import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:stay_connected/src/pages/Widgets/add_topic.dart';
import 'package:stay_connected/src/pages/call.dart';

class BooksView extends StatefulWidget {
  @override
  _BooksViewState createState() => _BooksViewState();
}

class _BooksViewState extends State<BooksView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('What Genre speaks to you?'),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: [
          AddTopic(
            'Fiction',
            null,
            "https://newint.org/sites/default/files/features/2016/09/20/01.10.2016-world-fiction-special-590.jpg",
            true,
          ),
          AddTopic(
              'Nonfiction',
              null,
              "https://s3.amazonaws.com/history-list-prod/data/7811/content.jpg",
              true),
        ],
      ),
    );
  }
}
