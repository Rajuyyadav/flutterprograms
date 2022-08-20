import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpandedExample1 extends StatefulWidget {
  const ExpandedExample1({Key? key}) : super(key: key);

  @override
  State<ExpandedExample1> createState() => _ExpandedExample1State();
}

class _ExpandedExample1State extends State<ExpandedExample1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('expanded'),
        centerTitle: true,
      ),
      body: Column(
        children: [
         SizedBox(
            height: 100,
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.black,
                  child: Center(
                    child: Text(
                      'first',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  color: Colors.green,
                  width: 100,
                  child: Text(
                    'second',
                    style: TextStyle(
                      fontSize: 25,
                      decorationStyle: TextDecorationStyle.dotted,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 50,
                    color: Colors.red,
                    child: Text(
                      'third',
                      // textDirection: TextDirection.ltr,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 50,
                    color: Colors.yellow,
                    child: Text(
                      'fourth',
                      // textDirection: TextDirection.ltr,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 300),
            child: Container(
              // padding: EdgeInsets.only(left: 20),
              color: Colors.pink,
              height: 100,
              width: 100,
              child: Text(
                'Text here',
                // textAlign: TextAlign.center,
              ),
            ),
          ),

        ],
      ),
    );
  }
}
