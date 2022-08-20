import 'package:flutter/material.dart';

class ContainerExpanded extends StatefulWidget {
  const ContainerExpanded({Key? key}) : super(key: key);

  @override
  State<ContainerExpanded> createState() => _ContainerExpandedState();
}

class _ContainerExpandedState extends State<ContainerExpanded> {
  double _value =6;
  bool _select=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ContainerExpanded'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            ListTile(
              //                                     ListTile
              leading: Icon(Icons.person),
              trailing: Icon(Icons.star),
              title:Text('title'),
              subtitle: Text('subtitle\n hello'),
              // tileColor: Colors.yellowAccent,
              // textColor: Colors.brown,
              // selectedColor: Colors.lightBlueAccent,
              selected: true,
              // dense: true,
              // enabled: false,
              isThreeLine: true,
              onTap: (){
                print('tapped');
              },
              onLongPress: (){
                print('LongPressed');
              },
            ),












            Baseline(
              //                                     Baseline

            baseline: 20.0,
              baselineType: TextBaseline.alphabetic,
              child: Container(
                child: Text('text'),
                height: 40,
                width: 50,
                color: Colors.blue,
              ),
            ),



            Slider(
              //                                         slider

              min: 1,
              max: 20,
              value: _value,
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              },
            ),
            Row(
              children: [
                Container(
                  width: 50,
                  // height: 15,
                  color: Colors.blue,
                  child: Center(
                    child:
                        Image(image: AssetImage('assets/back_img3flower.png')),
                  ),
                ),
                Expanded(
                  child: Container(
                        height: 90,
                    color: Colors.red,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Container(

                          child: Text('abcd',textAlign: TextAlign.center,),
                        ),

                        SizedBox(height: 10,),

                        Container(
                          child: Text('1234'),
                        ),
                        SizedBox(height: 10,),

                        Container(
                          child: Text('5678'),
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            ),
            // Expanded(
            // flex: 1,
            // child:

            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.pink,
                    // height: 20,
                    child: Text(
                      'hello',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                    width: 50,
                    // height: 45,
                    color: Colors.blue,
                    child: Center(
                      child: Text('hello'),
                    )),
              ],
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.deepOrange,
                child: Text(
                  'first',
                  style: TextStyle(
                      color: Colors.redAccent,
                      backgroundColor: Colors.yellowAccent),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.greenAccent,
                height: 100, // ignores height,
                // child: Text('first'),
                child: Center(
                  child: Text('third'),
                ),
              ),
            ),

            Container(
              color: Colors.yellow,
              height: 100,
              child: Text('first'),
            ),
            FlutterLogo(size: 50,),

          ],
        ),
      ),
    );
  }
}
