import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListFileFlutter extends StatefulWidget {
  const ListFileFlutter({Key? key}) : super(key: key);

  @override
  State<ListFileFlutter> createState() => _ListFileFlutterState();
}

class _ListFileFlutterState extends State<ListFileFlutter> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List_tile'),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    // padding: EdgeInsets.all(10),
                    color: Colors.yellow,
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.only(left: 0, top: 10, bottom: 10),
                        // padding: EdgeInsets.all(10),
                        height: 170,
                        width: 270,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          color: Color(0xFFF66903),
                          child: Column(
                            // mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ListTile(
                                leading: Icon(
                                  Icons.album,
                                  size: 60,
                                ),
                                title: Text(
                                  'Sonu Nigam',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 28,
                                  ),
                                ),
                                subtitle: Text(
                                  "Best of sonu nigam music",
                                  style: TextStyle(fontSize: 17),
                                ),
                              ),

                             ButtonBar(
                            mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(width: 20,),

                                    RaisedButton(
                                      child: Text('play'),
                                      onPressed: () {
                                        print('play');
                                      },
                                    ),
                                    SizedBox(width: 0,),

                                    RaisedButton(
                                      child: Text('pause'),
                                      onPressed: () {
                                        print('pause');

                                      },
                                    ),
                                  ],
                                ),
                              
                              // const Text('sonu nigam')
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const Text(
              'hello',
            ),
            const SizedBox(
              height: 20,
            ),

            // Expanded(
            //   child:
            Container(
                color: Colors.black,
                // fit: BoxFit.fill,
                height: 100,
                child: Expanded(
                  child: Row(
                    children: [
                      Container(
                        width: 50,
                        color: Colors.red,
                      ),
                      Container(
                          color: Colors.yellow,
                          child: const FlutterLogo(
                            size: 100,
                          )),
                    ],
                  ),
                )
                // child: FlutterLogo(size: 100,),

                ),
            // ),
            const SizedBox(
              height: 20,
            ),

            const SizedBox(
              height: 20,
              child: Center(
                child: Text('hello'),
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  // borderSide: BorderSide(color: Colors.green, width: 5, style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Colors.green),
                ),

                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  borderSide: BorderSide(color: Colors.red, width: 2),
                ),

                // fillColor: Colors.pink,
                // filled: true,
                prefixIcon: Icon(Icons.person),
                suffix: Text('hello'),

                suffixIcon: Icon(Icons.send),

                labelText: 'password',
                hintText: 'enter your password',
                // helperText: 'eidshjx', //         helper text
              ),
            ),
          ],
        ),
      ),
    );
  }
}
