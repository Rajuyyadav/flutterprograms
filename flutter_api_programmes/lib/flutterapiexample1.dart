import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Apiexample1 extends StatefulWidget {
  const Apiexample1({Key? key}) : super(key: key);

  @override
  State<Apiexample1> createState() => _Apiexample1State();
}

class _Apiexample1State extends State<Apiexample1> {
var data=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('API CALLS'),
      ),
      body: Center(
        child: ElevatedButton(
            child: const Text('submit'),
            onPressed: () async {
              // runn();
              var url = Uri.parse('https://jsonplaceholder.typicode.com/comments');
              var response = await get(url);
              print('Response status: ${response.statusCode}');
              print('Response status: ${response.body}');

              // print(jsonDecode(response.body));
              //   setState(() {
              //
              //   var jsondata =jsonDecode(response.body);
              //   var data = jsondata['name'];
              //   print(data);
              //
              //
              // });
              // int itemId = json.decode(response.body)[2]['id'];
              // jsonDecode(response.body);
              // String itemname = json.decode(response.body)[2]['name'];

              // var uemail = json.decode(response.body)[2]['Email'];

              // print('id is $itemId'
              // +'name is $itemname'
              // );

              // for(response.body){
              //   print(object)
              // }
              // response = data as Response ;
// print(data[0]['title']);
            }
        ),
      ),
    );
  }
}

// Future<void> runn() async {
  // var url = Uri.parse('https://jsonplaceholder.typicode.com/comments');
  // var response = await get(url);
  // print('Response status: ${response.statusCode}');
  // print('Response status: ${response.body}');

  // print(jsonDecode(response.body));

  // int itemId = json.decode(response.body)[2]['id'];
  // jsonDecode(response.body);
  // String itemname = json.decode(response.body)[2]['name'];

  // var uemail = json.decode(response.body)[2]['Email'];

  // print('id is $itemId'
  // +'name is $itemname'
  // );

  // for(response.body){
  //   print(object)
  // }
  // response = data as Response ;
// print(data[0]['title']);
// }
