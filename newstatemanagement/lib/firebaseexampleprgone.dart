import 'package:flutter/material.dart';

class Firebaseexprgone extends StatefulWidget {
  const Firebaseexprgone({Key? key}) : super(key: key);

  @override
  State<Firebaseexprgone> createState() => _FirebaseexprgoneState();
}

class _FirebaseexprgoneState extends State<Firebaseexprgone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child:
        Column(
          children: [
            Text("dataone"),
            TextButton(onPressed: (){Navigator.pushNamed(context, '\p');}, child: Text("Go")),

          ],
        ),),
      // routes
    );
  }
}
