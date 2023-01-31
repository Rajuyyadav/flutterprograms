import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';

class Secondscreen extends StatefulWidget {
  const Secondscreen({Key? key}) : super(key: key);

  @override
  State<Secondscreen> createState() => _SecondscreenState();
}

class _SecondscreenState extends State<Secondscreen> {
  final TextEditingController _controller = TextEditingController();
  late bool visibleornot = false;

  List item=["zeroth","first","second","third","fourth","fifth"];
  int? a;
  int? b;
// var abc;


  //
  // Future calll() async{
  //   Timer.periodic(Duration(seconds: 3), (val) {
  //
  //       abc=item[b!];
  //
  //   });
  //
  //
  // }



  @override
  Widget build(BuildContext context) {


     // print(a+6);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Test"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(children: [
        const Text("welcome to second screen"),
        const SizedBox(
          height: 20,
        ),
        TextFormField(
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            labelText: "enter any number",
            border: OutlineInputBorder(),
          ),
          controller: _controller,
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                visibleornot = true;
              });
              //
               a= int.parse(_controller.text);
               b=(a!%6);
              print(a);
              print(b);


            },
            child: const Text("Search"),
        ),

        if(visibleornot)                            //   it will execute when this if is there  if not then then no execution "error"
          //   Text("${item[b!]}",style: const TextStyle(fontSize: 30),),
        Visibility(
          visible: visibleornot,
          maintainState: false,
          maintainInteractivity: false,
          maintainSize: false,
          child: Column(
            children: [
              Card(
                child: SizedBox(
                  height: 100,
                  width: 300,
                  child: Column(
                    children:  [
                      Text(_controller.text.toString(),style: const TextStyle(fontSize: 25),),
const SizedBox(height: 16,),

                        Text("${item[b??0]}",style: const TextStyle(fontSize: 30),),


// Text("$abc"),













                      // Text(_controller.text),

                      // Text("${item[int.parse(_controller.text).toInt()%6]}"),       // value in the in the list of the item name "item"
                    // ==============or======================
                    //   Text("${item[b!]}"),
                      // Text(item[b!]),


                      // Text("${int.parse(_controller.text).toInt()%6}"),       // direct value divided by the user given number
                      // Text(item[b!]),

                    ],
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Secondscreen()));


                  },
                  child: const Text("RESET")),
            ],
          ),
        )
      ])),
    );
  }
}


