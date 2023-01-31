
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';

class GetImage with ChangeNotifier{
  File? imagepath;
  Future<File?> callImage({Function(File? pimage)? onsuccess}) async {
    final pimage = await ImagePicker().pickImage(source: ImageSource.gallery);
    imagepath = File(pimage!.path);

    onsuccess?.call(imagepath!);
    notifyListeners();

  }
}
