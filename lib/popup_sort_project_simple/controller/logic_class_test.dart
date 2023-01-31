import 'dart:convert';

import 'package:flutter/services.dart';

import '../model/model_sort_test.dart';

class LogicClassCodeTest {
  List<SortDataJsonFileTest>? listOfData = [];

  Future<List<SortDataJsonFileTest>?> loadJsonDataTest({VoidCallback? onSucces}) async {
    await Future.delayed(Duration(seconds: 2));

    final response =
        await rootBundle.loadString("assets/jsonfiles/sortdatafile.json");
    final decodeData = json.decode(response);

    listOfData?.addAll(List<SortDataJsonFileTest>.from(decodeData.map((e) =>
        SortDataJsonFileTest.fromMap(e)))); // ===============state change========

    onSucces?.call();
    print('========${listOfData?[0].id}');

    print('=====listOfData===${listOfData?.length}');

    return listOfData;
  }
}
