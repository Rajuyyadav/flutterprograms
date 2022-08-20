import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutternewwidgets/textfieldexample.dart';

import 'listfileflutter.dart';

class DEFAULTTABBARCONTROLLEREXAMPLE extends StatelessWidget {
  const DEFAULTTABBARCONTROLLEREXAMPLE({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              title: Text('TabBar'),
              bottomOpacity: 0.8,
              bottom: TabBar(tabs: [

                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_bike)),
              ]),
            ),
            body: Center(
              child: TabBarView(children: [

                Firstscreenfortabbar(),
                // Secondscreenfortabbar(),
                ListFileFlutter(),
              ]),
            ),
          )),
    );
  }
}

class Firstscreenfortabbar extends StatelessWidget {
  const Firstscreenfortabbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text('This is the text for the First screen'),

            Textfieldexample(),
          ],
        ),
      ),
    );
  }
}

class Secondscreenfortabbar extends StatelessWidget {
  const Secondscreenfortabbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [Text('This is the text for the Second screen')],
        ),
      ),
    );
  }
}
