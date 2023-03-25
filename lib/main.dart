import 'package:biscuit2/Pages/Auth/intro.dart';
import 'package:biscuit2/Pages/Main_Screens/camera_screen.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

List<CameraDescription>? cameras;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Intro(),
      theme: ThemeData(brightness: Brightness.dark),
    );
  }
}
