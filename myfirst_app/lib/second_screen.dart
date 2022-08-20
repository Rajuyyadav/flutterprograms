import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondClassDemo extends StatelessWidget {
  const SecondClassDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu_rounded),
        title: Text('demoapp'),
      ),
      body: Center(
        child: ListView(
          children: [
            Container(
              //                                             Container 1 images

              // height: 150,
              color: Colors.pinkAccent,
              child: Column(
                // mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'welcome to flutter',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.yellowAccent, width: 5),
                          borderRadius: BorderRadius.circular(9.0),
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/cat1.png',
                            ),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                  Image.asset(
                    'assets/cat1.png',
                    width: 300,
                    height: 150,
                  ),
                  Image.asset(
                    'assets/abc/computer.jpeg',
                  ),
                ],
              ),
            ), //                        Container 1 images ending

            SizedBox(height: 2.7),

            Container(
              //                                Container 2 Text

              height: 150,
              color: Colors.greenAccent,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                      color: Colors.white70,
                      child: Text(
                        ' circle '
                        ' circle  ',
                        style: TextStyle(
                            color: Colors.white,
                            backgroundColor: Colors.purpleAccent,
                            shadows: [
                              Shadow(
                                color: Colors.yellowAccent,
                                offset: Offset(5, 5),
                                blurRadius: 15,
                              ),
                            ]),
                      )),
                ),
              ),
            ), //                                    Container 2 Text end

            Container(
              //                                            3rd container  login page
              height: 250,
              color: Colors.white70,
              child: Column(
                children: const [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: TextField(
                      style: TextStyle(color: Colors.redAccent),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter Name',
                        hintText: 'enter your name',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 0,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter Password',
                        hintText: 'enter your password',
                      ),
                    ),
                  ),
                  RaisedButton(
                    disabledColor: Colors.blue,
                    disabledTextColor: Colors.white,
                    child: Text(
                      'sign in',
                    ),
                    onPressed: null,
                  ),
                ],
              ),
            ), //end of login page.

            SizedBox(height: 2.5),

            Container(
              //                                    Container 4 rich Text
              height: 150,
              color: Colors.black12,
              child: RichText(
                  text: TextSpan(
                text: 'have a account',
                style: TextStyle(
                  fontSize: 20,
                ),
                children: [
                  TextSpan(
                    text: ' sign up',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 25,
                    ),
                  ),
                ],
              )),
            ), //                                    Container 4 rich Text end.

            SizedBox(height: 2),

            Container(
              //                                    Container 5 circle

              height: 150,
              color: Colors.greenAccent,
              child: Row(
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Column(children: [
                    SizedBox(
                      height: 35,
                    ),
                    CircleAvatar(
                      //                                       first circle
                      radius: 40,
                      child: Text('krishna'),
                      backgroundImage: NetworkImage(
                          'https://www.google.com/imgres?imgurl=https%3A%2F%2Fstatic.javatpoint.com%2Ftutorial%2Fflutter%2Fimages%2Fflutter-logo.png&imgrefurl=https%3A%2F%2Fwww.javatpoint.com%2Fflutter&tbnid=PHVkrIifRR6UWM&vet=12ahUKEwiwma2ZwZj4AhWlKbcAHXd3AIwQMygAegUIARCgAQ..i&docid=BFL-VduJcD9QsM&w=200&h=200&q=flutter%20javatpoint&ved=2ahUKEwiwma2ZwZj4AhWlKbcAHXd3AIwQMygAegUIARCgAQ'),
// backgroundColor:Colors.redAccent ,
                    ),
                  ]),
                  SizedBox(
                    width: 10,
                  ),
                  Column(children: [
                    SizedBox(
                      height: 25,
                    ),
                    CircleAvatar(
                      //                                          Second circle
                      radius: 50,
                      child: Text('krishna'),
                      backgroundColor: Colors.redAccent,

                      // backgroundImage: NetworkImage(
                      //     'https://www.google.com/imgres?imgurl=https%3A%2F%2Fstatic.'
                      //     'javatpoint.com%2Ftutorial%2Fflutter%2Fimages%2Fflutter-logo.'
                      //     'png&imgrefurl=https%3A%2F%2Fwww.javatpoint.com%2Fflutter&tbnid='
                      //     'PHVkrIifRR6UWM&vet=12ahUKEwiwma2ZwZj4AhWlKbcAHXd3AIwQMygAegUIARCgAQ.'
                      //     '.i&docid=BFL-VduJcD9QsM&w=200&h=200&q=flutter%20javatpoint&ved='
                      //     '2ahUKEwiwma2ZwZj4AhWlKbcAHXd3AIwQMygAegUIARCgAQ'
                      // ),
                    ),
                  ]),
                  SizedBox(
                    width: 10,
                  ),
                  Column(children: [
                    SizedBox(
                      height: 15,
                    ),
                    CircleAvatar(
                      //                                            Third circle
                      radius: 60,
                      child: Text(
                        'krishna',
                        style: TextStyle(color: Colors.black),
                      ),
                      backgroundImage:
                          AssetImage('assets/abc/flutter_logo.png'),
                    ),
                  ]),
                ],
              ),
            ), //                       Container 5 circle end.

            SizedBox(
              height: 1.8,
            ),
            Container(
              //                                    Container 5 something
              height: 150,
              color: Colors.white70,


            ),
          ],
        ),
      ),
    );
  }
}
