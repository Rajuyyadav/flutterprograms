
import 'package:flutter/material.dart';
import 'package:tdl_logic_code_withui/popup_sort_project_simple/controller/logic_class_test.dart';

class SortingDataPageTest extends StatefulWidget {
  const SortingDataPageTest({Key? key}) : super(key: key);

  @override
  State<SortingDataPageTest> createState() => _SortingDataPageTestState();
}

class _SortingDataPageTestState extends State<SortingDataPageTest> {
  final LogicClassCodeTest list = LogicClassCodeTest();

  @override
  void initState() {
    super.initState();
    // list.loadJsonDataTest(onSucces: () {
    //   setState(() {});
    // });
    list.loadJsonDataTest().then((value) {
      setState(() {});
    });
  }

//================

  //======================

  @override
  Widget build(BuildContext context) {
    final listOfData = list.listOfData;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){setState(() {
            list.listOfData?.sort((a,b)=>a.id!.compareTo(b.id!));

          });}, icon: Icon(Icons.refresh)),

          PopupMenuButton(
              itemBuilder: (BuildContext ctx) => [
                PopupMenuItem(
                    onTap: () {
                      setState(() {});
                      list.listOfData
                          ?.sort((a, b) => a.price!.compareTo(b.price!));
                    },
                    child: const Text("l2h price")),
                PopupMenuItem(child: const Text("h2l price"),onTap: ()=>setState(() {
                  list.listOfData?.sort((b,a)=>a.price!.compareTo(b.price!));
                })),
                PopupMenuItem(
                    onTap: () => setState(() {
                      list.listOfData?.sort((a, b) => a.rating!.compareTo(b.rating!));
                    }),
                    child: const Text("l2h rating")),


                PopupMenuItem(child: const Text("h2l rating"),onTap: ()=>setState(() {
                  list.listOfData?.sort((b,a)=>a.rating!.compareTo(b.rating!));
                })),


              ])
        ],
      ),
      body: (listOfData!.isEmpty)
          ? SizedBox(
          height: 500,
          width: double.infinity,
          child: Center(
              child: Column(
                children: [
                  const CircularProgressIndicator(),
                  TextButton(
                      onPressed: () {
                        setState(() {});
                      },
                      child: Text("data"))
                ],
              )))
          : Column(
        children: [
          // Text("${listOfData?[0].id}"),
          ListView.builder(
            shrinkWrap: true,
            itemCount: listOfData?.length,
            itemBuilder: (ctx, index) {
              return ListTile(
                title: Text(
                  "${listOfData?[index].name}",
                  style: TextStyle(color: Colors.red),
                ),
                subtitle: Column(
                  children: [
                    Text(
                      "${listOfData?[index].price}",
                      style:
                      TextStyle(color: Colors.purple, fontSize: 20),
                    ),
                    Text("${list.listOfData?[index].rating}"),

                  ],

                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
