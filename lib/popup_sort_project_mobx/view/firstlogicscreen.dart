import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../controller/logic_class.dart';

class SortingDataPage extends StatefulWidget {
  const SortingDataPage({Key? key}) : super(key: key);

  @override
  State<SortingDataPage> createState() => _SortingPageState();
}

class _SortingPageState extends State<SortingDataPage> {
  LogicClassCode lsc = LogicClassCode();

  bool value1 = true;

  @override
  void initState() {
    super.initState();
    lsc.loadJsondata();
  }

  // List<String> abc = ["itemOne", "itemTwo", "itemThree", "itemFour"];
  @override
  Widget build(BuildContext context) {
    final listOfData = lsc.listOfData;

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                lsc.refresh();
              },
              icon: const Icon(Icons.refresh)),
          PopupMenuButton(
              itemBuilder: (ctx) => [
                PopupMenuItem(
                    onTap: () {
                      lsc.lowToHighPrice();
                    },
                    child: const Text("data1")),
                PopupMenuItem(
                    onTap: () {
                      lsc.highToLowPrice();
                    },
                    child: const Text("data2"))
              ])
        ],
      ),
      body: Observer(
        builder: (ctx) => (listOfData!.isEmpty)
            ? const CircularProgressIndicator()
            : Center(
          child: Column(
            children: [
// Text("data${lsc.listOfData?[lsc.selectedIndex.value].id}"),
// or===
              Text("data${lsc.listOfData?[lsc.selectedIndex].id}"),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: listOfData.length,
                  itemBuilder: (ctx, index) {
                    return ListTile(
                      onTap: () {
                        lsc.calll(index);
                        value1 = !value1;
                      },
                      title: Text("${listOfData[index].name}"),
                      subtitle: Column(
                        children: [
                          // Text("${lsc.listOfData?[lsc.selectedIndex].id}"),
                          Text(
                              "${value1 ? (lsc.listOfData?[index].id) : ""}"),

                          Text("${listOfData[index].price}"),
                        ],
                      ),
                    );
                  }),
              Expanded(
                child: GridView.count(

                  crossAxisCount: 2,
                  children: List.generate(10, (index) => Text("Text$index")),

                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
