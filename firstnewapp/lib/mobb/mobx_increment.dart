import 'package:flutter/material.dart';
// import 'package:mobx/mobx.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'counter.dart';
// import 'package:firstnewapp/counter.dart';
// import 'package:mobx_examples/counter/counter.dart';

class MobIncrement extends StatefulWidget {
  const MobIncrement({Key? key}) : super(key: key);

  @override
  State<MobIncrement> createState() => _MobIncrementState();
}

class _MobIncrementState extends State<MobIncrement> {
  final Counter counter = Counter();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mobx Increment Counter"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text('you have pushed the button this many times:'),
            Observer(
              builder: (_) => Text('${counter.count}'),
            ),
            ElevatedButton(
                onPressed: () {
                  counter.increment();
                },
                child: Text('click')),
            Observer(
              builder: (_) => InkWell(
                focusColor: Colors.red,
                hoverColor: Colors.limeAccent,
                onDoubleTap: () {
                  counter.decrement();
                },
                child: Image(image: AssetImage("assets/img.png")),
              ),
            ),
            Text('Doubleclick on the above image to decrease the counter'),
          ],
        ),
      ),
    );
  }
}
