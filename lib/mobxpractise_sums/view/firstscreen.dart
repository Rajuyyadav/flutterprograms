import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tdl_logic_code_withui/mobxpractise_sums/controller/mobxclass1.dart';
import 'package:tdl_logic_code_withui/mobxpractise_sums/view/secondscreen2.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({Key? key}) : super(key: key);
String name="";
  final aaa = Counter();

  @override
  Widget build(BuildContext context) {
    final aaa = Provider.of<Counter>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                  return SecondScreen2();
                }));
              },
              icon: const Icon(Icons.navigate_next))
        ],
      ),
      body: Center(
        child: Column(
          children: [
            
            // ============================SharedPreferences==============
            // Text("name"),
            // ElevatedButton(onPressed: () async {
            //   SharedPreferences sp = await SharedPreferences.getInstance();
            //   sp.setString("key", "value22");
            //
            //   // sp.getString("key");
            //   print(sp.getString("key"));
            //
            //
            //
            //
            // }, child: const Text("data")),
            
            
            Observer(
                builder: (ctx) => Text("hello flutter ${aaa.count}",
                    style: Theme.of(context).textTheme.headline3)),



            Observer(builder: (ctx) => Text("data2 ${aaa.count2.value}")),



            TextButton(
                onPressed: () {
                  aaa.call1();
                },
                child: const Text("data")),
            TextButton(
              onPressed: aaa.call2,
              child: Text("data2"),
            ),
            TextButton(
              onPressed: aaa.callDec,
              child: Text("datadec"),
            ),
          ],
        ),
      ),
    );
  }
}
