import 'package:flutter/material.dart';
import 'package:stay_connected/src/pages/index.dart';

class SurveyView extends StatefulWidget {
  @override
  _SurveyViewState createState() => _SurveyViewState();
}

class _SurveyViewState extends State<SurveyView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: FlatButton(
        onPressed: () {
          Navigator.push(
            context,
            new MaterialPageRoute(
              builder: (context) => IndexPage(),
            ),
          );
        },
        child: Text(
          'Click Me',
        ),
      ),
    ));
  }
}
