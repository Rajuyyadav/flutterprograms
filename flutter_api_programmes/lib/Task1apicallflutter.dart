import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Task1apiCallFlutter extends StatefulWidget {
  const Task1apiCallFlutter({Key? key}) : super(key: key);

  @override
  State<Task1apiCallFlutter> createState() => _Task1apiCallFlutterState();
}

class _Task1apiCallFlutterState extends State<Task1apiCallFlutter> {
  var responseData;
  List listdata=[];

  @override
  initState(){
    super.initState();
    fun();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task1_ApiCall'),
        actions: [
          IconButton(
              onPressed: () {
                fun();
                print(listdata.length);

              },
              icon: Icon(Icons.send))
        ],
      ),
      body: responseData!=null? Container(
        decoration: BoxDecoration(border: Border.all(width: 0)),
        child: ListView.separated(
          padding: EdgeInsets.all(4),
          itemCount: responseData.length,
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
          itemBuilder: (BuildContext context, int index) {
            return const Center(
              child: Card(
                child: ListTile(
                  leading: CircleAvatar(radius: 30,backgroundColor: Colors.tealAccent,),
            //       title: Text(
            //         responseData[index]['name'],
            //        // style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21),
            // ),
                 subtitle: Text('email'),
                ),
              ),
            );
          },
        ),
      )      : const Center(
        child: CircularProgressIndicator(),
      )
    );
  }

  Future fun() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/comments");
    var response = await get(url);
    try {
      if (response.statusCode == 200) {
        print('Response status: ${response.statusCode}');
        // print('Response status: ${response.body}');
        responseData = jsonDecode(response.body) as List;
        print(responseData.length);

        setState(() {
          print(listdata.length);

        });
        // for(var i ;i<responseData.length;i++){
        //   print(i['id']);
        //   // var outdata = [i];
        //   // print(i);
        // }

      }
    }catch (e) {
      print(e);
    }

    // var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    // final response = await http.get(url);
    // print('Response status: ${response.statusCode}');
    // var responseData = json.decode(response.body);
    // print(responseData);
    //  print('Response status: ${response.body}');
    // print(jsonDecode(response.body));

    // int itemId = json.decode(response.body)[2]['id'];
    // print('id is $itemId');

    // for(response.body){
    //   print(object)
    // }
  }
}
