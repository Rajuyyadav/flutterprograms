import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'controllerclass.dart';

class TableDo1 extends StatefulWidget {
  const TableDo1({Key? key}) : super(key: key);

  @override
  State<TableDo1> createState() => _TableDo1State();
}

class _TableDo1State extends State<TableDo1> {
  Control1 classObject = Control1();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    classObject.loadjson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: ListView(
        children: [


          // Observer(
          //   builder: (context) => (classObject.observeList!.isEmpty)
          //       ? const CircularProgressIndicator()
          //       : Text("${classObject.observeList?[0].premium}",style: TextStyle(color: Colors.red),),
          // ),

          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Benefit Illustration",
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),
                  ),
                  RichText(
                      text: const TextSpan(children: [
                    WidgetSpan(
                        child: Icon(
                      Icons.file_download_outlined,
                      color: Colors.purpleAccent,
                      size: 15,
                    )),
                    TextSpan(
                      text: " DOWNLOAD",
                      style: TextStyle(
                          color: Colors.purpleAccent, letterSpacing: 1.2,fontWeight: FontWeight.w600),
                    )
                  ])
                      // Text("Download",style: TextStyle(color: Colors.pink),))
                      ),
                ]),
          ),
          Observer(builder: (context) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: DataTable(
                columnSpacing: 20,
                border: TableBorder.all(color:const Color(0xff0d0d0e)),
                // dataRowColor: Colo,
                // dataRowColor: MaterialStateProperty.all(Colors.amber),
                columns: const [
                  DataColumn(
                      label: Text(
                    "Year",
                    style: TextStyle(color: Colors.grey),
                  )),
                  DataColumn(
                      label: Text(
                    "Premium",
                    style: TextStyle(color: Colors.grey),
                  )),
                  DataColumn(
                      label: Text(
                    "LifeCover",
                    style: TextStyle(color: Colors.grey),
                  )),
                  DataColumn(
                      label: Text(
                    "Surrender",
                    style: TextStyle(color: Colors.grey),
                  )),
                  DataColumn(
                      label: Text(
                    "Income",
                    style: TextStyle(color: Colors.grey),
                  )),
                ],
                rows: classObject.observeList
                        ?.map((e) => DataRow(cells: [
                              DataCell(Center(
                                child: Text(
                                  "${e.year}",
                                  style:const TextStyle(color: Colors.white),
                                ),
                              )),
                              DataCell(Center(
                                child: Text(
                                  "${e.premium}",
                                  style: TextStyle(color: Colors.white),
                                ),
                              )),
                              DataCell(Center(
                                child: Text(
                                  "${e.lifeCover}",
                                  style: TextStyle(color: Colors.white),
                                ),
                              )),
                              DataCell(Center(
                                child: Text(
                                  "${e.surrender}",
                                  style: TextStyle(color: Colors.white),
                                ),
                              )),
                              DataCell(Center(
                                child: Text(
                                  "${e.income}",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ))
                            ]))
                        .toList() ??
                    [],
              ),
            );
          }),
        ],
      )),
    );
  }
}



// boringshow filled stacks
