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
  final snackBar = SnackBar(content: Text('Please choose a topic!'));

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
    return Scaffold(
        body: Builder(
      builder: (context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              onPressed: () {
                setState(() {
                  _channelName = 'Sports';
                });
              },
              child: Text(
                'Sports',
              ),
            ),
            FlatButton(
              child: Text('Join'),
              onPressed: () {
                _channelName.isEmpty
                    ? Scaffold.of(context).showSnackBar(snackBar)
                    : onJoin();
              },
            ),
          ],
        ),
      ),
    ));
  }
}
