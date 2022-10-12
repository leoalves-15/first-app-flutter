import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Camera extends StatefulWidget {
  const Camera({super.key});

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  final ImagePicker _picker = ImagePicker();
  File? selectedImage;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        selectedImage == null ? Container() : Image.file(selectedImage!),
        Center(
            child: IconButton(
                onPressed: () {
                  takeImageCamera();
                },
                icon: Icon(Icons.photo_camera_outlined))),
        Center(
          child: Text('Tire sua foto'),
        ),
      ],
    );
  }

  takeImageCamera() async {
    final XFile? imageTemp =
        await _picker.pickImage(source: ImageSource.camera);
    if (imageTemp != null) {
      setState(() {
        selectedImage = File(imageTemp.path);
      });
    }
  }
}
