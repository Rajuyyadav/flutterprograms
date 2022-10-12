import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Timeinfo extends ChangeNotifier {
  int dec = 60;
  int inc = 60;
  int getdectime() => dec;
  void updatetime() {
    dec--;
    notifyListeners();
  }
  updatetime1() {
    inc++;
    notifyListeners();
  }
}

class Timecount1 extends StatefulWidget {
  const Timecount1({Key? key}) : super(key: key);

  @override
  State<Timecount1> createState() => _Timecount1State();
}

class _Timecount1State extends State<Timecount1> {
  int initialtime = 60;
  int val = 1;

  @override
  void initstate() {
    super.initState();
    timestart();

  }

  // @override
  // void didUpdateWidget(covariant Timecount1 oldWidget) {
  // timestart();
  //   super.didUpdateWidget(oldWidget);
  // }

  void timestart() {
    print("hi");
    Timer.periodic(const Duration(seconds: 1), (t) {
      // print(t);
      var _timeinfo = Provider.of<Timeinfo>(context,listen: false);
      _timeinfo.updatetime();
      print('Timer called');

      // setState((){
      //   initialtime--;
      // });


    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Consumer<Timeinfo>(builder: (context, data, child) {
               return Text(data.getdectime().toString(),
                   style: Theme.of(context).textTheme.headline2);
             }),

            Consumer<Timeinfo>(builder: (context, data, child) {
              return Text(data.inc.toString(),
                  style: Theme.of(context).textTheme.headline2);
            }),

            Consumer<Timeinfo>(builder: (context, data, child) {
              return TextButton(
                onPressed: () {
                  var _timeinfo = Provider.of<Timeinfo>(context, listen: false);
                  _timeinfo.updatetime1();
                  // setState(() {
                  //   initialtime--;
                  // });
                },
                child: const Text('submit'),
              );
            }),
            TextButton(onPressed: (){  setState((){
              initialtime--;
            }); }, child: Text('submit')),

            const Text('hello2'),

            Divider(
              thickness: 2,
              color: Colors.red,
            ),
Image.asset("assets/img.png"),
            Divider(
              thickness: 2,
              color: Colors.red,
            ),
           // Provider(
           //   create: (context)=>Timeinfo,
           // child: Column(
           //   children: [
           //
           //     Text('A'),
           //     Text('B'),
           //     Text('C'),
           //
           //   ],
           // ),) ,







          ],
        ),
      ),
    );
  }


}

class mycontainer1 extends StatelessWidget{
  const mycontainer1(Key key):super(key:key);
  @override
  Widget build(BuildContext context) {
    final Timeinfo = context.watch(
    );
return Text( Timeinfo.dec.toString());
  }

}
class Valclass {
  int incrval = 1;
  updateval() {
    if (incrval == 1 || incrval <= 10) {
      incrval++;
    }
  }
}
