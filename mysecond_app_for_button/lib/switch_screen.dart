import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'first_screen_for_button.dart';
// import 'package:custom_switch/custom_switch.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({Key? key}) : super(key: key);

  @override
  State<SwitchScreen> createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  bool value1 = true;
  bool val1 = false;

  bool V1 = false;
  bool showvalue = false;
  bool showvalue1 = false;
double _spekervolume=0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Switch',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('clicked!');
          FirstScreenButtonButton();
        },
        child: Text(
          'click',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              backgroundColor: Colors.deepOrange),
        ),
      ),
      body: Center(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                //  CustomSwitch(              //                        this is not latest version so we have to use the latest versions only.
                //    value: value1,
                //    onChanged: (value){
                // print('value:$value');
                // setState((){
                //   value1=value;
                // });
                // },
                //
                //  ),
                Text('value:$value1'),



                ElevatedButton(
                  //                                                              ElevatedButton

                onPressed: () {
                    print('clicked elevated button ');
                  },
                  child: Text('elevated'),
                ),
                ElevatedButton.icon(
                  //                                                              ElevatedButton + icon

                onPressed: () {
                      print('clicked elevated button icon ');
                    },
                    icon: Icon(Icons.star),
                    label: Text('text')),

                RaisedButton(
                  //                                                              RaisedButton
                  elevation: 15,
                  onPressed: () {
                    print('clicked raised button ');
                  },
                  child: Text('raised'),
                ),
                Checkbox(
                  //                                                              Checkbox

                value: showvalue,
                  onChanged: (value) {
                    setState(() {
                      showvalue = value ?? showvalue; // or
                      // this. showvalue = value?? showvalue;
                    });
                  },
                ),
                Checkbox(
                    value: val1,
                    onChanged: (val2) {
                      //                   checkbox code
                      setState(() {
                        val1 = val2 ?? val1;
                        // val1=val2 ??val1; // or       value will change i.e., true or false.

                        print('value changed');
                      });
                    }), //  checkbox code end

                Checkbox(
                    value: val1,
                    onChanged: (val2) {
                      setState(() {
                        val1 = val2 ?? val1;
                        // val1=val2 ??val1; // or       value will change i.e., true or false.

                        print('value changed');
                      });
                    }),
                // SwitchListTile(value: V1, onChanged: (v1){

                Container(
                  padding: EdgeInsets.only(right: 150), // extra padding needed for this switch to get in center
                  child: SwitchListTile(
                      //                                                  SwitchListTile  switch example
                      value: showvalue1,
                      onChanged: (value) {
                        print('Switch clicked $value');
                        setState(() {
                          showvalue1 = value;
                        });
                      }),
                ),

                Checkbox(
                  value: value1,
                  onChanged: (val) {
                    print('hekcbox selected');
                    setState(() {
                      value1 = val ?? value1;
                    });
                  },
                ),
                // Spacer(),
                Switch(
                  //                                                             switch example

                value: value1,
                  onChanged: (bool value) {
                    setState(() {
                      value1 = value;
                    });
                  },
                ),
                Text('value:$value1'),

                Checkbox(
                  value: value1,
                  onChanged: (value) {},
                  activeColor: Colors.pink,
                ),

                // Expanded(
                //   flex: 1,
                //   child: Container(
                //
                //     margin: EdgeInsets.only(left: 125,top: 30),
                //     // padding: EdgeInsets.only(left: 20,right: 20),
                //     child: Text('text,text',style: TextStyle(backgroundColor: Colors.red,fontSize: 40,),),
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.only(top:10,left: 0.0),

                  child: Container(
                    margin: EdgeInsets.only(left: 125,top: 30),
                    // padding: EdgeInsets.only(left: 20,right: 20),
                    child: Text('Text',style: TextStyle(backgroundColor: Colors.red,fontSize: 40,),),
                  ),
                ),
                //                                                                    icon button
                IconButton(onPressed: (){
                  setState((){
                    _spekervolume+=5;

                  });
                }, icon:  Icon(Icons.volume_up),
                tooltip: 'increase the volume by 5',
                  color: Colors.pinkAccent,
                ),
                    Text('speaker volume :$_spekervolume'),


              ],
            ),
          ),
          //                  child: Switch(value: value, onChanged: (){}),
        ),
      ),
    );
  }
}
