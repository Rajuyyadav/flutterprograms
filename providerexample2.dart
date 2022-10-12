import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_timer/simple_timer.dart';

class ProviderExampleTwo extends StatefulWidget {
  const ProviderExampleTwo({Key? key}) : super(key: key);

  @override
  State<ProviderExampleTwo> createState() => _ProviderExampleTwoState();
}

class _ProviderExampleTwoState extends State<ProviderExampleTwo> {
  TimerController? _timerController;
  @override
  void initState() {
    // initialize timercontroller
    TimerController;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text('hello'),
            SimpleTimer(
              controller: _timerController,
              duration: const Duration(seconds: 1,minutes: 1),
            ),
            TextButton(onPressed: (){
              _timerController?.start();
            }, child: const Text('start')),
            TextButton(onPressed: (){
              _timerController?.pause();
            }, child: const Text('start')),
          ],
        ),
      ),
    );
  }
}
