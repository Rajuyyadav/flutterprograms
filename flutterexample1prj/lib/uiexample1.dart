import 'package:flutter/material.dart';

class Uiexmpleone extends StatelessWidget {
  const Uiexmpleone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                child: Image(
              image: AssetImage('assets/res_img2.png'),
            )),
            Column(
              children: [
                ListTile(
                  title: Text('Home'),
                  leading: Icon(Icons.home),
                ),
                ListTile(
                  title: Text('Account'),
                  leading: Icon(Icons.account_circle),
                ),
                ListTile(
                  title: Text('Shop'),
                  leading: Icon(Icons.shopping_cart_outlined),
                ),
                ListTile(
                  title: Text('Store'),
                  leading: Icon(Icons.storefront),
                ),
              ],
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 215,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/res_img2.png'),
                        fit: BoxFit.cover)),
              ),//image
              Padding(
                padding: const EdgeInsets.only(top: 170),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Form(
                      child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(
                            top: 50, left: 20, right: 20),
                          child: Text('Sign in',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),)),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 50, left: 20, right: 20),
                        child: TextField(
                            decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          labelText: 'Name',
                          hintText: 'enter your name:',
                        )),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 20, left: 20, right: 20),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            prefixIcon: Icon(Icons.password),
                            labelText: 'Password',
                            hintText: 'Enter your Password',
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 20, left: 20, right: 20),
                        child: TextField(
                            decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          prefixIcon: Icon(Icons.date_range_sharp),
                          labelText: 'DOB',
                          hintText: 'enter your DOB',
                        )),
                      ),
                      ElevatedButton(onPressed: () {  },
                      child: Text('Sign in'),
                        
                      ),
                      Text('forgot your Password'),
                    
                      
                      
                    ],
                  )),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
