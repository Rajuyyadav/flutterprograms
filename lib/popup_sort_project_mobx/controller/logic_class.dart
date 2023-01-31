import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:mobx/mobx.dart';
import '../model/model_sort.dart';
part 'logic_class.g.dart';

class LogicClassCode = _LogicClassCode with _$LogicClassCode;

abstract class _LogicClassCode with Store {

  @observable
  ObservableList<SortDataJsonFile>? listOfData =
      ObservableList<SortDataJsonFile>();

  // @observable
  // Observable<int> selectedIndex= Observable(0);

  @observable
  int selectedIndex=0;



@action
  void lowToHighPrice(){
  listOfData?.sort((a,b)=>a.price!.compareTo(b.price!));

}


@action
void highToLowPrice(){
  listOfData?.sort((b,a)=>a.price!.compareTo(b.price!));

}

  @action
  void refresh(){
  listOfData?.sort((a,b)=>a.id!.compareTo(b.id!));

  }

  @action
   void calll (int i) {
  selectedIndex = i;
   }

 // orrr=============
 //  @action
 //  void calll (int i) {
 // selectedIndex.value = i;
 //  }



  @action
  Future<List<SortDataJsonFile>?> loadJsondata() async {
    final response =
        await rootBundle.loadString("assets/jsonfiles/sortdatafile.json");
    final decodedata = jsonDecode(response);

    listOfData?.addAll(List<SortDataJsonFile>.from(decodedata.map((e) =>
        SortDataJsonFile.fromJson(e)))); // ===============state change========

    print('========${listOfData?[0].id}');
    // listOfData?.clear();

    // listOfData?.addAll(listOfData!);
    print('=====listOfData===${listOfData?.length}');

    return listOfData;
  }
}
