import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Exampleapi extends StatefulWidget {
  const Exampleapi({Key? key}) : super(key: key);

  @override
  State<Exampleapi> createState() => _ExampleapiState();
}

class _ExampleapiState extends State<Exampleapi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: ElevatedButton(
          child: const Text('submit'),
          onPressed: () async {
            var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
            var response = await get(url);
            print('Response status: ${response.statusCode}');
            print('Response status: ${response.body}');
          },
        ),
      ),
    );
  }
}
