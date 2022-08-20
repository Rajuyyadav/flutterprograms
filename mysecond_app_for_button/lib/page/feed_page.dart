import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mysecond_app_for_button/first_screen_for_button.dart';

class Feed1Page extends StatefulWidget {
  const Feed1Page({Key? key}) : super(key: key);

  @override
  State<Feed1Page> createState() => _Feed1PageState();
}

class _Feed1PageState extends State<Feed1Page> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,

        child: Center (
        child:Text('feed',style: TextStyle(fontSize: 30),),
     )
    );
  }
}
