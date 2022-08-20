import 'package:flutter/material.dart';
import 'package:line_chart/charts/line-chart.widget.dart';

class Flutterchart extends StatelessWidget {
  Flutterchart({Key? key}) : super(key: key);
  List locations = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("CHART"),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            InkWell(
              child: Card(
                child: ListTile(
                    iconColor: Colors.red,
                    title: Text('Hello'),
                    leading: Icon(Icons.account_circle)),
              ),
              onTap: () {
                print('hello');
              },
            ),
            InkWell(
              child: Card(
                child: ListTile(
                    iconColor: Colors.red,
                    title: Text('Hello'),
                    leading: Icon(Icons.account_circle)),
              ),
              onTap: () {
                data();
              },
            ),




          ],
        ));
  }

  void data() {
    return print('hello');
    ;

  }
}
