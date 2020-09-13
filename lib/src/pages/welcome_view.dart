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
          title: Center(child: Text('Stay Connected')),
        ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Icon(
                  Icons.people,
                  color: Colors.blue,
                  size: 60,
                ),
              ),
          RaisedButton(
            color: Colors.blue,
            onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (context) => TopicsView(
                  ),
        ),
      );
            },
            child: Text('Get Started', 
              style: TextStyle(color: Colors.white),),
          ),
        ],
      ),
      ) 
    );
  }
}
