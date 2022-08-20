import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Practiseprog1 extends StatelessWidget {
  const Practiseprog1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Color(0xff555555)),
                child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  // height: 120,
                  child: Image(image: AssetImage('assets/res_img4.png',),height: 100,),
                ),
                const Text('\nCafe',style: TextStyle(color: Colors.white,fontSize: 15)),
              ],
            )),
            Column(
              children: [
                ListTile(
                  title: Text('Home'),
                  leading: Icon(Icons.home),
                ),
                ListTile(
                  title: Text('Account'),
                  leading: Icon(Icons.account_box),
                  ),
                ListTile(
                  title: Text('Cart'),
                  leading: Icon(Icons.shopping_cart_outlined),
                ),
                ListTile(
                  title: Text('Logout'),
                  leading: Icon(Icons.logout),
                ),
              ],
            )
          ],
        ),
      ),
      body:
          Column(
            children: [
              Center(
                child: Container(
                color: Colors.red,
                child: Image(image: AssetImage("assets/res_img1.png")),
                ),
              ),

            ],
          ),


    );
  }
}
