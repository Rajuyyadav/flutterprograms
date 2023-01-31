import 'package:flutter/material.dart';
import 'package:newfirebase/testevalute/secondscreen.dart';

class Firstscreen extends StatefulWidget {
  const Firstscreen({Key? key}) : super(key: key);

  @override
  State<Firstscreen> createState() => _FirstscreenState();
}

class _FirstscreenState extends State<Firstscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(26.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             const Text("Flutter",style: TextStyle(color: Colors.red,fontSize: 30),),
              const SizedBox(height: 10,),
              const Text("build an application",style: TextStyle(color: Colors.green,fontSize: 20),),
              const SizedBox(height: 10,),
              const Center(child: Text("This is a flutter framework where you can build your own beautiful application by your self "                ,style: TextStyle(color: Colors.red,fontSize: 16),)),
              const SizedBox(height: 10,),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){return const Secondscreen(); }));


                  }, child: const Text("Let's get started")),
            ],
          ),
        ),
      ),
    );
  }
}
