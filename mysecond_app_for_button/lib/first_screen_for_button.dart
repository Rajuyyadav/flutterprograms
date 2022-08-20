import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mysecond_app_for_button/page/feed_page.dart';
import 'package:mysecond_app_for_button/page/home1_page.dart';

class FirstScreenButtonButton extends StatefulWidget {
  const FirstScreenButtonButton({Key? key}) : super(key: key);

  @override
  State<FirstScreenButtonButton> createState() =>
      _FirstScreenButtonButtonState();
}

class _FirstScreenButtonButtonState extends State<FirstScreenButtonButton> {
  int currentIndex = 0;
  final list1 = [
    Home1Page(),
  ];
  final Screens = [
    Home1Page(),
    Feed1Page(),
    Center(
        child: Text(
      'profile',
      style: TextStyle(fontSize: 30),
    )),

    Center(
        child: Text(
      'cart',
      style: TextStyle(fontSize: 30),
    )),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('buttons'
            // list1[currentIndex],

            // 'Buttons',
            ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              //                      to display screens according to tap.
              padding: EdgeInsets.only(right: 250),
              child: Screens[currentIndex], color: Colors.blue,

// Screens[currentIndex],color: Colors.pink,
            ),
            // IndexedStack(
            //   index: currentIndex ,
            //   children:
            //     Screens  ,
            // )
            //
            Row(
              children: [
                Container(
                  // padding: EdgeInsets.all(5),
                  margin: EdgeInsets.all(20),
                  // decoration: BoxDecoration(
                  //   border: Border.all(width: 2,),
                  //     borderRadius:BorderRadius.circular(15),
                  //      ),
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.purpleAccent),
                    child: Text(
                      'Text Button',
                      style: TextStyle(
                          backgroundColor: Colors.redAccent,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                    onPressed: () {
                      print('hello flutter');
                    },
                    onLongPress: () {
                      print("hi flutter");
                    },
                  ),
                ),
                Container(
                  child: TextButton(
                      style:
                          TextButton.styleFrom(backgroundColor: Colors.white70),
                      onPressed: () {
                        print('hello flutter');
                      },
                      child: Text('TextButton')),
                ),
              ],
            ),
            TextButton(
              //                                    2nd row button
              onPressed: () {},
              child: Text('TextButton'),
            ),
            //                                    3rd row button

            ElevatedButton(
                onPressed: () {
                  print('helloElevatedButton');
                },
                style: ElevatedButton.styleFrom(
                  side: BorderSide(
                    width: 5,
                    color: Colors.purple.shade700,
                  ),
                  elevation: 12,
                  shadowColor: Colors.white.withOpacity(0.7),
                ),
                child: Text('ElevatedButton')),

            Container(
              //                                    4th row button

              child: TextButton(
                style: TextButton.styleFrom(
                  // padding: EdgeInsets.only(top:5,),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  side: BorderSide(
                    width: 1.5,
                    color: Colors.white,
                  ),
                  shadowColor: Colors.white70,
                  primary: Colors.green,
                ),
                child: Text('texttext'),
                onPressed: () {
                  print('hellotext');
                },
              ),
            ),
            Container(
              //                                    5th row button
              child: OutlinedButton(
                style: TextButton.styleFrom(
                  primary: Colors.green,
                  side: BorderSide(width: 2, color: Colors.blue),
                ),
                child: Text('OutlinedButton'),
                onPressed: () {
                  print('helloOutlinedButton');
                  Colors.red;
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        // type: BottomNavigationBarType.fixed,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.blueAccent,
        selectedFontSize: 18,
        unselectedFontSize: 16,
        // showSelectedLabels: false,
        iconSize: 25,
        showUnselectedLabels: false,

        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        items: [
          BottomNavigationBarItem(
            // backgroundColor: Colors.purple[700],
            // backgroundColor: Color(0xff851498),
            backgroundColor: Color(0xff851498),
            icon: Icon(
              Icons.home,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_outlined,
              color: Colors.red,
            ),
            label: 'feed',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.blue,
            ),
            label: 'profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              // color: Colors.pinkAccent,
            ),
            label: 'cart',
          ),
        ],
      ),
    );
  }
}
