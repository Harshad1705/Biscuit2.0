import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tflite/tflite.dart';

import '../../main.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  // late CameraController cameraController;
  int direction = 0;
  //
  // @override
  // void initState() {
  //   super.initState();
  //   startCamera(0);
  //   // loadModel();
  // }

  // Future loadModel() async {
  //   await Tflite.loadModel(
  //     model: 'assets/models/model.tflite',
  //     labels: 'assets/models/labels.txt',
  //   );
  // }
  // Future startCamera() async {
  //   cameras = await availableCameras();
  //   cameraController = CameraController(
  //     cameras[0],
  //     ResolutionPreset.high,
  //   );
  //   await cameraController.initialize();
  //   cameraController.startImageStream((CameraImage image) {
  //     classifyImage(image);
  //   });
  // }
  // Future classifyImage(CameraImage image) async {
  //   var recognitions = await Tflite.runModelOnFrame(
  //     bytesList: image.planes.map((plane) {
  //       return plane.bytes;
  //     }).toList(),
  //     imageHeight: image.height,
  //     imageWidth: image.width,
  //     imageMean: 127.5,
  //     imageStd: 127.5,
  //     rotation: -90,
  //     numResults: 2,
  //   );
  //   print(recognitions);
  // }

  CameraImage? cameraImage;
  CameraController? cameraController;
  String output = "";

  @override
  void initState() {
    super.initState();
    loadCamera();
    loadModel();
  }

  loadCamera() {
    cameraController = CameraController(cameras![0], ResolutionPreset.medium);
    cameraController!.initialize().then((value) {
      if (!mounted) {
        return;
      } else {
        setState(() {
          cameraController!.startImageStream((imageStream) {
            cameraImage = imageStream;
            runModel();
          });
        });
      }
    });
  }

  runModel() async {
    if (cameraImage != null) {
      var predictions = await Tflite.runModelOnFrame(
        bytesList: cameraImage!.planes.map((plane) {
          return plane.bytes;
        }).toList(),
        imageHeight: cameraImage!.height,
        imageWidth: cameraImage!.width,
        imageMean: 127.5,
        imageStd: 127.5,
        rotation: 90,
        numResults: 2,
        threshold: 0.1,
        asynch: true,
      );
      predictions!.forEach((element) {
        setState(() {
          output = element['label'];
          print(output);
        });
      });
    }
  }

  loadModel() async {
    await Tflite.loadModel(
      model: 'assets/models/model.tflite',
      labels: 'assets/models/labels.txt',
    );
    // void startCamera(int direction) async {
    //   cameras = await availableCameras();
    //   cameraController = CameraController(
    //     cameras![direction],
    //     ResolutionPreset.high,
    //     enableAudio: false,
    //   );
    //   await cameraController.initialize().then((value) {
    //     if (!mounted) {
    //       return;
    //     }
    //     setState(() {}); //To refresh widget
    //   }).catchError((e) {
    //     print(e);
    //   });
    // }
    //
    // @override
    // void dispose() {
    //   cameraController.dispose();
    //   super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // if (cameraController.value.isInitialized) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.7,
                    width: MediaQuery.of(context).size.width,
                    child: !cameraController!.value.isInitialized
                        ? Container()
                        : AspectRatio(
                            aspectRatio: cameraController!.value.aspectRatio,
                            child: CameraPreview(cameraController!),
                          ),
                  ),
                ),
                Text(
                  output,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
//                 setState(() {
//                   direction = direction == 0 ? 1 : 0;
// // startCamera();
//                 });
              },
              child:
                  button(Icons.flip_camera_ios_outlined, Alignment.bottomLeft),
            ),
            GestureDetector(
              onTap: () {
                cameraController?.takePicture().then((XFile? file) {
                  if (mounted) {
                    if (file != null) {
                      print("Picture saved to ${file.path}");
                    }
                  }
                });
              },
              child: button(Icons.camera_alt_outlined, Alignment.bottomCenter),
            ),
          ],
        ),
      ),
    );
    // } else {
    //   return const SizedBox();
    // }
  }

  Widget button(IconData icon, Alignment alignment) {
    return Align(
      alignment: alignment,
      child: Container(
        margin: const EdgeInsets.only(
          left: 20,
          bottom: 20,
        ),
        height: 50,
        width: 50,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(2, 2),
              blurRadius: 10,
            ),
          ],
        ),
        child: Center(
          child: Icon(
            icon,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }
}
// Stack(
// children: [
// Container(
// height: MediaQuery.of(context).size.height,
// width: MediaQuery.of(context).size.width,
// child: CameraPreview(cameraController),
// ),
// GestureDetector(
// onTap: () {
// setState(() {
// direction = direction == 0 ? 1 : 0;
// startCamera(direction);
// });
// },
// child:
// button(Icons.flip_camera_ios_outlined, Alignment.bottomLeft),
// ),
// GestureDetector(
// onTap: () {
// cameraController.takePicture().then((XFile? file) {
// if (mounted) {
// if (file != null) {
// print("Picture saved to ${file.path}");
// }
// }
// });
// },
// child: button(Icons.camera_alt_outlined, Alignment.bottomCenter),
// ),
// ],
// ),
