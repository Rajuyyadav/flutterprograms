import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Firstscreeng extends StatefulWidget {
  const Firstscreeng({Key? key}) : super(key: key);

  @override
  State<Firstscreeng> createState() => _FirstscreengState();
}

class _FirstscreengState extends State<Firstscreeng> {
  late ValueNotifier<bool> _istrue1 = ValueNotifier<bool>(true);
  final a = ValueNotifier(true);

  late ValueNotifier<bool> _istrue2 = ValueNotifier(true);
  late ValueNotifier<bool> _istrue3 = ValueNotifier(true);
  late ValueNotifier<bool> _istrue4 = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 1),
          children: [

            ValueListenableBuilder(
                valueListenable: _istrue1,
                builder: (ctx, ch, _) {
                  print('color1-top');

                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: ch ? Colors.red : Colors.white),
                    onPressed: () {
                      _istrue1.value = !_istrue1.value;

                      // setState(() {
                      //
                      //   _istrue1 = !_istrue1;
                      // });
                    },
                    child: const Text("data"),
                  );
                }),

            ValueListenableBuilder(
                valueListenable: _istrue2,
                builder: (ctx, ch, _) {
                  print('color2-top');

                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: ch ? Colors.green : Colors.white),
                    onPressed: () {
                      _istrue2.value = !_istrue2.value;

                      // setState(() {
                      //
                      //   _istrue2 = !_istrue2;
                      // });
                    },
                    child: const Text("data"),
                  );
                }),
            ValueListenableBuilder(
                valueListenable: _istrue3,
                builder: (ctx, ch, _) {
                  print('text1-top');
                  return ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: ch ? Colors.yellow : Colors.white),
                      onPressed: () {
                        _istrue3.value = !_istrue3.value;
                      },
                      child: ch
                          ? const Text(
                              "Text1",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.black),
                            )
                          : const Text(
                              "",
                              style: TextStyle(color: Colors.white),
                            ));
                }),

            ValueListenableBuilder(
                valueListenable: _istrue4,
                builder: (ctx, ch, _) {
                  print('text2-top');

                  return ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: ch ? Colors.yellow : Colors.white),
                      onPressed: () {
                        _istrue4.value = !_istrue4.value;
                      },
                      child: ch
                          ? const Text(
                              "Text2",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.black),
                            )
                          : const Text(
                              "",
                              style: TextStyle(color: Colors.white),
                            ));
                }),

            //===========================================================================================

            ValueListenableBuilder(
                valueListenable: _istrue1,
                builder: (ctx, ch, _) {
                  print('color1-bottom');

                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: ch ? Colors.white : Colors.red),
                    onPressed: () {
                      _istrue1.value = !_istrue1.value;

                      // setState(() {
                      //
                      //   _istrue1 = !_istrue1;
                      // });
                    },
                    child: const Text("data"),
                  );
                }),

            ValueListenableBuilder(
                valueListenable: _istrue3,
                builder: (ctx, ch, _) {
                  print('text1-bottom');

                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: ch ? Colors.white : Colors.yellow),
                    onPressed: () {
                      _istrue3.value = !_istrue3.value;
                    },
                    child: ch
                        ? const Text(
                            "",
                            style: TextStyle(color: Colors.white),
                          )
                        : const Text(
                            "Text1",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          ),
                  );
                }),

            ValueListenableBuilder(
                valueListenable: _istrue2,
                builder: (ctx, ch, _) {
                  print('color2-bottom');

                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: ch ? Colors.white : Colors.green),
                    onPressed: () {
                      _istrue2.value = !_istrue2.value;
                    },
                    child: const Text("data"),
                  );
                }),

            ValueListenableBuilder(
                valueListenable: _istrue4,
                builder: (ctx, ch, _) {
                  print('text2-bottom');

                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: ch ? Colors.white : Colors.yellow),
                    onPressed: () {
                      _istrue4.value = !_istrue4.value;
                    },
                    child: ch
                        ? const Text(
                            "",
                            style: TextStyle(color: Colors.white),
                          )
                        : const Text(
                            "Text2",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}

//
// class Colorss {
//   final Color? color1, color2;
//   final String text1, text2;
//
//   Colorss(this.color1, this.color2, this.text1, this.text2);
// List<Colorss> colorlist = [
//   Colorss(Colors.red, Colors.yellow, 'OL', 'gtd'),
//   Colorss(Colors.red, Colors.yellow, 'OL', 'gtd'),
// ];
// }







//0502