import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExampleonGrid extends StatefulWidget {
  const ExampleonGrid({Key? key}) : super(key: key);

  @override
  State<ExampleonGrid> createState() => _ExampleonGridState();
}

class _ExampleonGridState extends State<ExampleonGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Grid-View'),
          leading: Icon(Icons.menu_rounded),
        ),
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
            // childAspectRatio: 10,
          ),
          children: [
            Container(
              color: Colors.red,
              child: Center(
                child: CircleAvatar(
                  radius: 20,
                  // backgroundColor: Colors.pinkAccent,
                  backgroundImage: AssetImage('assets/abc/flutter_logo.png'),
                ),
              ),
            ),
            Container(
              color: Colors.yellow,
              child: CircleAvatar(
                radius: 10,
                backgroundImage: AssetImage('assets/abc/computer.jpeg'),
              ),
            ),
            Container(
              color: Colors.green,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/abc/cat12.png'),
                radius: 10,
              ),
            ),
            Container(
              color: Colors.blue,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/302743/pexels-photo-302743.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                radius: 10,
              ),
            ),
            Container(
              color: Colors.blue,
              child: CircleAvatar(
                backgroundColor: Colors.pinkAccent,
                radius: 10,
              ),
            ),
            Container(
              color: Colors.blue,
              child: CircleAvatar(
                //46E7E7FF  0xFFFFFFFF
                backgroundColor: Color(0x46E7E7FF),
                radius: 10,
              ),
            ),
            Container(
              color: Colors.blue,
              child: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.pinkAccent,
              ),
            ),
            Container(
              color: Colors.blue,
              child: CircleAvatar(
                backgroundColor: Color(0xE5B72381),
                //E08E3CFF
                radius: 10,
              ),
            ),
            Container(
              color: Colors.blue,
              child: CircleAvatar(
                radius: 10,
              ),
            ),
            Container(
              color: Colors.blue,
              child: CircleAvatar(
                radius: 10,
              ),
            ),
          ],
        ));
  }
}
