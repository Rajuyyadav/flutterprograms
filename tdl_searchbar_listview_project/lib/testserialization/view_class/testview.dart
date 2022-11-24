import 'dart:convert';

import 'package:flutter/material.dart';

class Viewclass extends StatefulWidget {
  const Viewclass({Key? key}) : super(key: key);

  @override
  State<Viewclass> createState() => _ViewclassState();
}

class _ViewclassState extends State<Viewclass> {
  Map<String, dynamic> user = jsonDecode(jsonString);

  print('Howdy, ${user['name']}!');
  print('We sent the verification link to ${user['email']}.');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("sdjbnc ")
    );
  }
}


// {
// "name": "John Smith",
// "email": "john@example.com"
// }