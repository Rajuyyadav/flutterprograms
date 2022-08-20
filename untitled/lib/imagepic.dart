import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Imageuploader extends StatefulWidget {
  @override
  State<Imageuploader> createState() => _ImageuploaderState();
}

class _ImageuploaderState extends State<Imageuploader> {
  // const Imageuploader({Key? key}) : super(key: key);
  File? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(130),

              child: image != null
                  ? Image.file(image!,height:250,width: 250,)
                  : FlutterLogo(
                size: 100,
              ),
            ),
            // Container(
            //   child: image != null
            //       ? Image.file(image!,height:200,width: 200,)
            //       : FlutterLogo(
            //           size: 100,
            //         ),
            // ),
            Text('hello flutter.'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Color(0xffeeeeee)),
                child: ListTile(
                  title: Text('pick Gallery'),
                  leading: Icon(Icons.image_outlined),
                ),
                onPressed: () {
                  pickgallery();
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Color(0xffeeeeee)),
                child: const ListTile(
                  title: Text('pick Camera'),
                  leading: Icon(Icons.camera_alt_outlined),
                ),
                onPressed: () {
                  pickcamera();
                },
              ),
            )
          ],
        ));
  }

  Future pickgallery() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imagetemporary = File(image.path);
      setState((){
        this.image = imagetemporary;
      });

    } catch (e) {
      print(e);
    }
  }

  Future pickcamera() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if(image==null) return;
      final imagetemporary =File(image.path);
      setState((){
        this.image=imagetemporary;
      });


    } catch (e) {
      print(e);
    }

  }
}
