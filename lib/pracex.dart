import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import 'contollercamera.dart';

class Newpracex extends StatefulWidget {
  const Newpracex({Key? key}) : super(key: key);

  @override
  State<Newpracex> createState() => _NewpracexState();
}

class _NewpracexState extends State<Newpracex> {
  File? image;
  File? image2;
  Future<void> callfuturedata() async {
    final XFile? pickedimage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedimage != null) {
        image = File(pickedimage.path);
      }
    });
  }

  // GetImage image_Object = GetImage();

  @override
  Widget build(BuildContext context) {
    final img = Provider.of<GetImage>(context);

    return Scaffold(
      appBar: AppBar(),

      body: ListView(
        children: [
          Center(
            child: Text("data", style: Theme.of(context).textTheme.headline3),
          ),
          TextButton(
              onPressed: () {
                setState(() {});
              },
              child: Text("data")),
          TextButton(
              onPressed: () {
                callfuturedata();
              },
              child: const Text("pic")),
          Container(
            child: image == null
                ? const Text("there is no image")
                : Image.file(
                    image!,
                    height: 250,
                  ),
          ),
          TextButton(
              onPressed: () {
                img.callImage(onsuccess: (val) {
                  setState(() {
                    image2 = val;
                  });
                });
              },
              child: const Text("pic22")),
          Container(
            child: image2 == null
                ? const Text("there is no image")
                : Image.file(
                    image2!,
                    height: 250,
                  ),
          ),
        ],
      ),
    );
  }
}


//Functions ======
