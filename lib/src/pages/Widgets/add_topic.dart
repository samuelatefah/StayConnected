import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:stay_connected/src/pages/call.dart';

class AddTopic extends StatefulWidget {
  final String topicName;
  final Widget navigation;
  final String imageAddress;
  final bool isJoin;

  AddTopic(this.topicName, this.navigation, this.imageAddress, this.isJoin);

  @override
  _AddTopicState createState() =>
      _AddTopicState(topicName, navigation, imageAddress, isJoin);
}

class _AddTopicState extends State<AddTopic> {
  String topicName;
  Widget navigation;
  String imageAddress;
  bool isJoin;

  _AddTopicState(
      this.topicName, this.navigation, this.imageAddress, this.isJoin);

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
    return FlatButton(
      shape: RoundedRectangleBorder(
        side: BorderSide(
          width: 1.0,
          color: Colors.blue,
        ),
      ),
      highlightColor: Colors.blue,
      onPressed: () {
        if (!isJoin) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => navigation,
            ),
          );
        } else {
          setState(() {
            pressed = true;
            _channelName = topicName;
            onJoin();
          });
        }
      },
      child: Stack(
        children: [
          Center(
            child: Opacity(
              opacity: 0.5,
              child: Image.network(imageAddress),
            ),
          ),
          Center(
            child: Text(
              topicName,
              style: TextStyle(
                fontSize: 33,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
