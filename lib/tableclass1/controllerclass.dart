import 'dart:convert';

import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;
import 'package:tdl_logic_code_withui/tableclass1/table_model.dart';
part 'controllerclass.g.dart';

class Control1 = _Control1 with _$Control1;

abstract class _Control1 with Store {

  @observable
  ObservableList<NewClass1>? observeList = ObservableList<NewClass1>();

  @action
  Future<List<NewClass1>?> loadjson() async {
    var loadString =
        await http.get(Uri.parse("https://api.npoint.io/be1d44fa1d774bd536a4"));
    if (loadString.statusCode == 200) {
      print("okkkk      :    ${loadString.statusCode}");
      var decodeddata = json.decode(loadString.body) as List;
      observeList?.clear();

      observeList?.addAll(List<NewClass1>.from(
          decodeddata.map((e) =>
              NewClass1.fromJson(e))));

      print("okkkk      :    ${observeList?.length}");
      print("okkkk      :    ${observeList?[0].premium}");


    } else {
      print("not_okkkk      :    ${loadString.statusCode}");
    }

  }
}
