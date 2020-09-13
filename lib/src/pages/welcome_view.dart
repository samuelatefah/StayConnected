import 'package:flutter/material.dart';
import 'package:stay_connected/src/pages/topics_view.dart';

class WelcomeView extends StatefulWidget {
  @override
  _WelcomeViewState createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'StayConnected',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
        )),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 80,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Icon(
              Icons.people,
              color: Colors.blue,
              size: 200,
            ),
          ),
          SizedBox(
            height: 90,
          ),
          RaisedButton(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            elevation: 15,
            color: Colors.blue,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TopicsView(),
                ),
              );
            },
            child: Text('Get Started',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                )),
          ),
        ],
      ),
    ));
  }
}
