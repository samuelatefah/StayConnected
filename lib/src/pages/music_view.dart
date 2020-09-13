import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:stay_connected/src/pages/call.dart';

class AnimalsView extends StatefulWidget {
  @override
  _AnimalsViewState createState() => _AnimalsViewState();
}

class _AnimalsViewState extends State<AnimalsView> {
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
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Animals'),
        ),
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          children: [
            FlatButton(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1.0,
                ),
              ),
              highlightColor: Colors.blue,
              onPressed: () {
                setState(() {
                  pressed = true;
                  _channelName = 'Cats';
                  onJoin();
                });
              },
              child: Stack(
                children: [
                  Center(
                    child: Opacity(
                      opacity: 0.5,
                      child: Image.network(
                          "https://undark.org/wp-content/uploads/2020/02/GettyImages-1199242002-1-scaled.jpg"),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Cats',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1.0,
                ),
              ),
              highlightColor: Colors.blue,
              onPressed: () {
                setState(() {
                  pressed = true;
                  _channelName = 'Dogs';
                  onJoin();
                });
              },
              child: Stack(
                children: [
                  Center(
                    child: Opacity(
                      opacity: 0.5,
                      child: Image.network(
                          "https://static01.nyt.com/images/2019/06/17/science/17DOGS/17DOGS-facebookJumbo.jpg"),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Dogs',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
