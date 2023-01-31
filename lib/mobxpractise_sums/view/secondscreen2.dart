import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:tdl_logic_code_withui/mobxpractise_sums/controller/mobxclass1.dart';

class SecondScreen2 extends StatelessWidget {
  SecondScreen2({Key? key}) : super(key: key);

  final aaa=Counter(); //              here now it is not needed

  @override
  Widget build(BuildContext context) {
    final aaa = Provider.of<Counter>(context);   // when this is used then the above  line of creating instance is not required.


    return Scaffold(
      appBar: AppBar(title: Text("Data"),),
      body: Center(
        child: Column(
          children:  [
            Observer(builder: (ctx) => Text("hello flutter ${aaa.count}",style: Theme.of(context).textTheme.headline3)),
            Observer(builder: (ctx)=>Text("data2  ${aaa.count2.value}")),

            TextButton(onPressed: (){
              aaa.call1();
            }, child: Text("data"))
          ],
        ),
      ),



    );
  }
}
