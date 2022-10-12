import 'package:flutter/material.dart';

class learnnew1 extends StatelessWidget {
  const learnnew1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Text(
            "data",
          ),
          TextFormField(
            decoration: const InputDecoration(border: OutlineInputBorder()),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 40,
            child: TextFormField(
                decoration:
                    const InputDecoration(border: OutlineInputBorder())),
          ),
          // Flex(),// second text field
          Expanded(
            flex: 1,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                Container(
                  color: Colors.cyan,
                  width: 160,
                  child: const Text(
                    "data",
                  ),
                ),
                Container(
                  width: 150,
                  color: Colors.pink,
                  child: const Text(
                    "data",
                  ),
                ),
                Container(
                  width: 140,
                  color: Colors.cyan,
                  child: const Text(
                    "data",
                  ),
                ),
              ]),
            ),
          ),
          Flexible(
            child: Row(children: [
              Container(
                color: Colors.cyan,
                // width: 160,
                child: const Text(
                  "data",
                ),
              ),
              Container(
                color: Colors.cyan,
                // width: 160,
                child: const Text(
                  "data",
                ),
              ),
              Container(
                color: Colors.cyan,
                // width: 160,
                child: const Text(
                  "data",
                ),
              ),
              Container(
                // width: 150,
                color: Colors.pink,
                child: const Text(
                  "data",
                ),
              ),
              Container(
                // width: 140,
                color: Colors.cyan,
                child: const Text(
                  "data",
                ),
              ),
            ]),
          ),

// Flexible(
//   child: SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: [
//                     Container(
//                       color: Colors.cyan,
//                       width: 160,
//                       child: const Text(
//                         "data",
//                       ),
//                     ),
//                     Container(
//                       width: 150,
//                       color: Colors.pink,
//                       child: const Text(
//                         "data",
//                       ),
//                     ),
//                     Container(
//                       width: 140,
//                       color: Colors.cyan,
//                       child: const Text(
//                         "data",
//                       ),
//                     ),
//                     Container(
//                       width: 140,
//                       color: Colors.orange,
//                       child: const Text(
//                         "data",
//                       ),
//                     ),
//                     Container(
//                       width: 100,
//                       color: Colors.red,
//                       child: const Text(
//                         "data",
//                       ),
//                     )
//                   ],
//                 )),
//           ),
          Container(
            color: Colors.redAccent,
            child: Container(
              color: Colors.yellow,
              height: 200,
            ),
          ),
          // Container(color: Colors.black,

          //   height: 200,),
        ],
      ),
    );
  }
}
