import 'package:flutter/material.dart';
import 'package:myfirst_app/first_screen.dart';
import 'package:myfirst_app/second_screen.dart';
import 'package:myfirst_app/third_Screen.dart';

import 'fourth_screen_grid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        
      ),

      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      // home: First_screen(),
      home: SecondClassDemo(),
      // home:Third_screen(),
      //   home: ExampleonGrid(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          color: Colors.green,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: new Container(
                  height: 200,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 5.0),
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://images.pexels.com/photos/302743/pexels-photo-302743.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                          fit: BoxFit.fill)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  // Icon(ic)

                  // SizedBox(width: 80,),
                  Text(
                    'abc',
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Text(
                    'xyz',
                  )
                ],
              ),
              Row(
                children: [],
              ),
              Row(
                children: [],
              ),
              Row(
                children: [
                  Text(
                    "data",
                    style: TextStyle(fontSize: 42),
                  )
                ],
              )
              // Text(
              //   'T vamsi Krishna',
              //   style: TextStyle(
              //       fontStyle: FontStyle.italic,
              //       fontWeight: FontWeight.bold,
              //       backgroundColor: Colors.red,
              //       color: Colors.white),
              // ),
              // Text(
              //   '28 Years Old',
              // ),
              // Text(
              //   '+91 99999988888',
              // ),
              // Text(
              //   'vassi.t@techouts.com',
              // ),
            ],
          ),
        ),

        // ),
      ),
    );
  }
}
