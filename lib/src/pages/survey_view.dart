import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:stay_connected/src/pages/call.dart';
import 'package:stay_connected/src/pages/index.dart';

class SurveyView extends StatefulWidget {
  @override
  _SurveyViewState createState() => _SurveyViewState();
}

class _SurveyViewState extends State<SurveyView> {
  ClientRole _role = ClientRole.Broadcaster;

  /// if channel textField is validated to have error
  bool _validateError = false;
  //final snackBar = SnackBar(content: Text('Please choose a topic!'));
  bool pressed = false;

  String _channelName = '';

  Future<void> onJoin() async {
    // update input validation
    setState(() {
      //_channelController.text.isEmpty
      _channelName.isEmpty ? _validateError = true : _validateError = false;
    });
    //if (_channelController.text.isNotEmpty) {
    if (_channelName.isNotEmpty) {
      // await for camera and mic permissions before pushing video page
      await _handleCameraAndMic();
      // push video page with given channel name
      await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CallPage(
            //channelName: _channelController.text,
            channelName: _channelName,
            role: _role,
          ),
        ),
      );
    }
  }

  Future<void> _handleCameraAndMic() async {
    await PermissionHandler().requestPermissions(
      [PermissionGroup.camera, PermissionGroup.microphone],
    );
  }

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          title: Center(child: Text("Choose a topic")),
        ),
        body: Builder(
          builder: (context) => SizedBox(
            width: _width,
            height: _height,
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    physics: AlwaysScrollableScrollPhysics(),
                    children: [
                      FlatButton(
                        color: pressed ? Colors.blue : Colors.transparent,
                        highlightColor: Colors.blue,
                        onPressed: () {
                          setState(() {
                            pressed = true;
                            _channelName = 'Art';
                            onJoin();
                          });
                        },
                        child: Text(
                          'Art',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      FlatButton(
                        color: pressed ? Colors.blue : Colors.transparent,
                        highlightColor: Colors.blue,
                        onPressed: () {
                          setState(() {
                            pressed = true;
                            _channelName = 'Beauty';
                            onJoin();
                          });
                        },
                        child: Text(
                          'Beauty',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      FlatButton(
                        color: pressed ? Colors.blue : Colors.transparent,
                        highlightColor: Colors.blue,
                        onPressed: () {
                          setState(() {
                            pressed = true;
                            _channelName = 'Books';
                            onJoin();
                          });
                        },
                        child: Text(
                          'Books',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      FlatButton(
                        color: pressed ? Colors.blue : Colors.transparent,
                        highlightColor: Colors.blue,
                        onPressed: () {
                          setState(() {
                            pressed = true;
                            _channelName = 'Cooking';
                            onJoin();
                          });
                        },
                        child: Text(
                          'Cooking',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      FlatButton(
                        color: pressed ? Colors.blue : Colors.transparent,
                        highlightColor: Colors.blue,
                        onPressed: () {
                          setState(() {
                            pressed = true;
                            _channelName = 'Games';
                            onJoin();
                          });
                        },
                        child: Text(
                          'Games',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      FlatButton(
                        color: pressed ? Colors.blue : Colors.transparent,
                        highlightColor: Colors.blue,
                        onPressed: () {
                          setState(() {
                            pressed = true;
                            _channelName = 'General';
                            onJoin();
                          });
                        },
                        child: Text(
                          'General',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      FlatButton(
                        color: pressed ? Colors.blue : Colors.transparent,
                        highlightColor: Colors.blue,
                        onPressed: () {
                          setState(() {
                            pressed = true;
                            _channelName = 'Movies/TV';
                            onJoin();
                          });
                        },
                        child: Text(
                          'Movies/TV',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      FlatButton(
                        color: pressed ? Colors.blue : Colors.transparent,
                        highlightColor: Colors.blue,
                        onPressed: () {
                          setState(() {
                            pressed = true;
                            _channelName = 'Music';
                            onJoin();
                          });
                        },
                        child: Text(
                          'Music',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      FlatButton(
                        color: pressed ? Colors.blue : Colors.transparent,
                        highlightColor: Colors.blue,
                        onPressed: () {
                          setState(() {
                            pressed = true;
                            _channelName = 'Sports';
                            onJoin();
                          });
                        },
                        child: Text(
                          'Sports',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                /*FlatButton(
              child: Text('Join'),
              onPressed: () {
                _channelName.isEmpty
                    ? Scaffold.of(context).showSnackBar(snackBar)
                    : onJoin();
              },
            ),*/
              ],
            ),
          ),
        ));
  }
}
