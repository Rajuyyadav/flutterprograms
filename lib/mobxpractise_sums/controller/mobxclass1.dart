import 'package:mobx/mobx.dart';
part 'mobxclass1.g.dart';

class Counter = _Counter with _$Counter;

abstract class _Counter with Store {
  @observable
  int count = 0;

  @observable
  String b = "rajesh";

  @action
  void call1() {
    count++;
  }

  void callDec() {
    runInAction(() {
      if(count>0)
      {
        count--;
      }
      }



    );
  }





  Observable<int> count2 = Observable(0);
  // var count2 = Observable(10);
  void call2() {
    runInAction(() => count2.value = count2.value+ 1);
  }
}
