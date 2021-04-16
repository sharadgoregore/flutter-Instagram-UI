import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Imagepic extends StatefulWidget {
  Imagepic(this.pickimagefile);

  final void Function(File pickeimage)
      pickimagefile; /////this will will not return anything
  @override
  _ImagepicState createState() => _ImagepicState();
}

class _ImagepicState extends State<Imagepic> {
  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(
      source: ImageSource.gallery,
      imageQuality: 90,
      maxWidth: 150,
    );

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
    widget.pickimagefile(File(pickedFile.path));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
            onTap: getImage,
            child: CircleAvatar(
              radius: 70.0,
              backgroundImage: _image != null ? FileImage(_image) : null,
            )),
      ],
    );
  }
}
