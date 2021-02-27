

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class CameraPage extends StatefulWidget{
  CameraDescription cd;
  @override
  State<StatefulWidget> createState() => _CameraPageState();
  CameraPage({Key key,this.cd}):super(key:key);
}

class _CameraPageState extends State<CameraPage>{
  CameraController _cameraController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _cameraController = CameraController(widget.cd, ResolutionPreset.medium);

  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: _cameraController.initialize(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          // If the Future is complete, display the preview.
          return Column(
            children: [
              CameraPreview(_cameraController),
              ElevatedButton(onPressed: null, child: Text("Flip"))
            ],
          );
        } else {
          // Otherwise, display a loading indicator.
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }

}