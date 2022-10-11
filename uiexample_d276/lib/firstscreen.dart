import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:table_calendar/table_calendar.dart';

import 'calendarprogram.dart';
import 'newtabled276.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);
  // bool ci=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_outlined),
          onPressed: () {},
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Newtable1()),
                );
              },
              icon: Icon(Icons.navigate_next_rounded)),
          SizedBox(
            width: 30,
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Categories',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),// text categories
          const SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // color: Colors.red,
                  height: 55,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Stack(
                          // height: 30,
                          // width: 40,
                          children: [
                            Container(
                              height: 40, width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              // color: Colors.white,
                            ),
                            const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: CircleAvatar(
                                radius: 10,
                                backgroundImage:
                                    AssetImage('assets/burger1img.png'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 17.0),
                        child: Text(
                          'Burger',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                      ),
                      // SizedBox(width: 0,),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  // color: Colors.red,
                  height: 55,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Stack(
                          // height: 30,
                          // width: 40,
                          children: [
                            Container(
                              height: 40, width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              // color: Colors.white,
                            ),
                            const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: CircleAvatar(
                                radius: 10,
                                backgroundImage:
                                    AssetImage('assets/pizzaimg.png'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 17.0),
                        child: Text(
                          'Pizza',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                      ),
                      // SizedBox(width: 0,),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  // color: Colors.red,
                  height: 55,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Stack(
                          // height: 30,
                          // width: 40,
                          children: [
                            Container(
                              height: 40, width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              // color: Colors.white,
                            ),
                            const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: CircleAvatar(
                                radius: 10,
                                backgroundImage:
                                    AssetImage('assets/burger1img.png'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 17.0),
                        child: Text(
                          'Burger',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                      ),
                      // SizedBox(width: 0,),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 1,
            color: Colors.black,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            // color: Colors.red,
            height: 55,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(30)),
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Stack(
                    // height: 30,
                    // width: 40,
                    children: [
                      Container(
                        height: 40, width: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        // color: Colors.white,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: CircleAvatar(
                          radius: 10,
                          backgroundImage: AssetImage('assets/burger1img.png'),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 17.0),
                  child: Text(
                    'Burger',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ),
                // SizedBox(width: 0,),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 1,
            color: Colors.black,
          ),
          Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Name',
                    hintText: 'Enter your Name',
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
              onPressed: () {
                showAlertDialog(context);
              },
              child: Text('AlertBox')),
          // Table
          // TableCalendar(focusedDay: focusedDay, firstDay: firstDay, lastDay: lastDay)
          Calenderexample(),

        ],
      ),
    );
  }
}

//                                                                  dialog box
showAlertDialog(BuildContext context) {
  Widget okbutton = ElevatedButton(
    onPressed: () {
      Navigator.of(context).pop();
    },
    child: Text('YES'),
  );
  AlertDialog alert = AlertDialog(
    backgroundColor: Colors.white,
    elevation: 5,
    title: Text(
      'Alert_Dialog',
      textAlign: TextAlign.center,
    ),
    content: Text('this is a alert dialog box.'),
    // content: TextFormField(maxLines: 2),

    actions: [
      okbutton,
      // RaisedButton(
      //   onPressed: () {
      //     Navigator.of(context).pop();
      //   },
      //   child: Text('ok'),
      // ),
    ],
  );



  showDialog(context: context, builder: (BuildContext context) => alert
// or
      // {
      //   return alert;
      // }
      );
}
