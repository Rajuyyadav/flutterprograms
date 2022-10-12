import 'package:flutter/material.dart';
import 'package:newfirebase/loginpageone.dart';

import '../practisenewconceps.dart';

class Intropage extends StatelessWidget {
  const Intropage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("login page task"),centerTitle: true,),
        body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        const Text("click to visit to the login page"),
    TextButton(onPressed: (){
       Navigator.of(context).push(MaterialPageRoute( builder: (context)=>Loginpageone()));
    }, child: const Text("click")),
          PNC(),
      ],
    )
    ),
    );
  }
}
