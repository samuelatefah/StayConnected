import 'package:flutter/material.dart';
import 'package:stay_connected/src/pages/topics_view.dart';
import 'package:stay_connected/src/pages/welcome_view.dart';

import './src/pages/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StayConnected',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Change this to WindowView or SurveyView depending on what screen
      //you are working on
      home: WelcomeView(),
    );
  }
}
//hello
