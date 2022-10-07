import 'package:camera/camera.dart';
import 'package:face1/home.dart';
import 'package:flutter/material.dart';

List<CameraDescription> cameras = [];

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  cameras = await availableCameras();
  return runApp(MaterialApp(
    title: "face detaction app",
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}
