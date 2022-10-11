import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Home Page",),
            Image(image: AssetImage('assets/img.png')),

            Text("This is the Home Page of the App"),
          ],
        ),
        
      ),
    );
  }
}
