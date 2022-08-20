import 'package:flutter/cupertino.dart';

class exampleone extends StatefulWidget {
  const exampleone({Key? key}) : super(key: key);

  @override
  State<exampleone> createState() => _exampleoneState();
}

class _exampleoneState extends State<exampleone> {
  bool isvisible= true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(decoration: BoxDecoration(border: Border.all(width: 1)),
              child: const Text('how to use')),
          Visibility(
              visible: isvisible,
              child: const Text('data')),
          Container(decoration: BoxDecoration(border: Border.all(width: 1)),
              child: const Text('T&C apply')),


        ],
      ),
    );
  }
}
