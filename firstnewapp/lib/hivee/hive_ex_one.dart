import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Directory document = await getApplicationDocumentsDirectory();
  Hive.init(document.path);
  await Hive.openBox<String>("friends");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "hello",
      theme: ThemeData(primarySwatch: Colors.pink),
      home: HiveExOne(),
    );
  }
}

class HiveExOne extends StatefulWidget {
  const HiveExOne({Key? key}) : super(key: key);

  @override
  State<HiveExOne> createState() => _HiveExOneState();
}

class _HiveExOneState extends State<HiveExOne> {
  late Box<String> friendsbox;
  TextEditingController _idcontroller = TextEditingController();
  TextEditingController _namecontroller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    friendsbox = Hive.box<String>("friends");
    Hive.openBox("friends");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Container(
              //   child: TextButton(onPressed: (){
              //    print( friendsbox.get("e"));                          //         by writing thios line we can get the result in console and we can check whether we have done the insertion properly or not.
              //   },child: Text("Submit"),),
              // ), //                                           after checking with this code we can writing the below code to see the result in emulator

              // if(friendsbox != null)
              Expanded(
                child: ValueListenableBuilder(
                    valueListenable: friendsbox.listenable(),
                    builder: (context, Box<String> friends, child) {
                      return ListView.separated(
                          itemBuilder: (context, index) {
                            final key = friends.keys.toList()[index];
                            final value = friends.get(key);
                            return ListTile(
                              title: Text(value!),
                              subtitle: Text(key),
                            );
                          },
                          separatorBuilder: (_, index) => Divider(),
                          itemCount: friends.keys.toList().length);
                    }),
              ),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (_) {
                              return Dialog(
                                child: Container(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      TextField(controller: _idcontroller),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      TextField(controller: _namecontroller),
                                      TextButton(
                                          onPressed: () {
                                            final key = _idcontroller.text;
                                            final value = _namecontroller.text;
                                            friendsbox.put(key, value);
                                            Navigator.pop(context);
                                          },
                                          child: const Text("submit"))
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                      child: const Text("Insert")),
                  ElevatedButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (_) {
                              return Dialog(
                                child: Container(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      TextField(controller: _idcontroller),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      TextField(controller: _namecontroller),
                                      TextButton(
                                          onPressed: () {
                                            final key = _idcontroller.text;
                                            final value = _namecontroller.text;
                                            friendsbox.put(key, value);
                                            Navigator.pop(context);
                                          },
                                          child: const Text("submit"))
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                      child: const Text("Update")),
                  ElevatedButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (_) {
                              return Dialog(
                                child: Container(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      TextField(controller: _idcontroller),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                  
                                      TextButton(
                                          onPressed: () {
                                            final key = _idcontroller.text;
                                           
                                            friendsbox.delete(key);

                                            Navigator.pop(context);
                                          },
                                          child: const Text("submit"))
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                      child: const Text("Delete")),
                ],
              ),
            ],
          ),
        ));
  }
}
