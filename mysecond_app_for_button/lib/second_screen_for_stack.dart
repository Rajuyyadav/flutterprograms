import 'package:flutter/material.dart';

class SecondScreenForStack extends StatefulWidget {
  const SecondScreenForStack({Key? key}) : super(key: key);

  @override
  State<SecondScreenForStack> createState() => _SecondScreenForStackState();
}

class _SecondScreenForStackState extends State<SecondScreenForStack> {
  int ci = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(
          'assets/back_imgpink.png',
        ),
        fit: BoxFit.fill,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        // appBar: AppBar(
        //   title: Text('Stack1'),
        //   centerTitle: true,
        //   leading: Icon(Icons.menu),
        // ),
        body: Container(
            child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 0.1),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
                color: Colors.white38,
              ),
              height: 260,
              // color: Colors.white38,       //                  this image should not  be here this must be inside the decoration
            ),
            Container(
              //                                       1st container in Stack
              height: 250,
              // color: Color(0xff152260),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                ),
                // borderRadius: BorderRadius.circular(40,),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),

                color: Color(0xff152260),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 30),
                        child: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15, top: 30),
                        child: Icon(
                          Icons.more_horiz_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Welcome Back',
                      style: TextStyle(color: Colors.white70, fontSize: 33),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 175.0, left: 55),
              //alignment: Alignment(10, 20),
              child: Container(
                //                                                 1st container in Stack (image)
                // alignment: AlignmentDirectional.bottomCenter,
                // decoration: BoxDecoration(
                //   border: Border.all(width: 1),
                //     borderRadius: BorderRadius.circular(25)),

                height: 160,
                width: 140,
                // color: Color(0xff1fe028),

                // child: Image(
                //   image: AssetImage(
                //     'assets/back_imgprofile.png',
                //   ),
                //   fit: BoxFit.fill,
                // ),

                decoration: BoxDecoration(
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/back_imgprofile.png',
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),

            // Image(
            //     image: AssetImage(
            //       'assets/back_img3flower.png',
            //     )),
          ],
        )),
        bottomNavigationBar: BottomNavigationBar(
            // current index
            selectedItemColor: Colors.pink,
            selectedFontSize: 16,
            unselectedFontSize: 14,
            currentIndex: ci,
            onTap: (index) {
              setState(() {
                ci = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.access_time,
                  ),
                  label: 'Time'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.account_balance_wallet_outlined,
                  ),
                  label: 'Account'),
            ]),
      ),
    );
  }
}
