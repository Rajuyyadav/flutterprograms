import 'package:flutter/material.dart';

class Newclassss extends StatefulWidget {
  const Newclassss({Key? key}) : super(key: key);

  @override
  State<Newclassss> createState() => _NewclassssState();
}

class _NewclassssState extends State<Newclassss> {
  int a = 5;
  int b = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("data"),
            Container(
              color: Colors.redAccent,
              child: TextButton(
                onPressed: () {
                  setState((){

                  });
                },
                child: const Text("data"))),
            Text("$a"),
            Text("$b"),
            ElevatedButton(
              child: const Text("click"),
              onPressed: () {
                setState(() {
                  a++;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
