import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'calssforphoto.dart';

class Apisecondprogram extends StatefulWidget {
  const Apisecondprogram({Key? key}) : super(key: key);

  @override
  State<Apisecondprogram> createState() => _ApisecondprogramState();
}

class _ApisecondprogramState extends State<Apisecondprogram> {
  var isloading = true;
  void initState() {
    super.initState();
    run();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
      ),
      body: isloading
          ? Center(child: CircularProgressIndicator())
          : Center(
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.circle,
                      color: Colors.red,
                    ),
                    title: Text('name'),
                    trailing: OutlinedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.circle_outlined),
                        label: Text('123')),
                  ),
                ],
              ),
            ),
    );
  }

  Future<void> run() async {
    // var url = Uri.parse('https://jsonplaceholder.typicode.com/photos?albumId=1'); //or
    var url=Uri.https('jsonplaceholder.typicode.com', 'photos');
    var response = await http.get(url);
    print(response.statusCode); // print(response.body);

    if (response.statusCode == 200) {
      var resdata = jsonDecode(response.body) as List;
      List<Photo> photolst = [];


      // for (var i in resdata) {     ======================== to print the data in the terminal window
      //
      //   print(i['id']);
      // }
      print(resdata.length);

      setState(() {
        isloading = false;
      });
    }
  }

}
