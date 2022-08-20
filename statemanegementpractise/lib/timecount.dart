import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Timecount1 extends StatefulWidget {
  const Timecount1({Key? key}) : super(key: key);

  @override
  State<Timecount1> createState() => _Timecount1State();
}

class _Timecount1State extends State<Timecount1> {
  int initialtime = 60;

  void initstate(){
    super.initState();
  Timer.periodic( const Duration(seconds: 1), (t) {
      setState((){
        initialtime--;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(initialtime.toString()),
        // TextButton(onPressed: (){  setState((){
        //   initialtime--;
        // }); }, child: Text('submit'))
      ],
    );
  }
}
