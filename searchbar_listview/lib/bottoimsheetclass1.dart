import 'package:flutter/material.dart';
import 'package:searchbar_listview/searchbarlistview.dart';

class Bottomsheetclass1 extends StatelessWidget {
  const Bottomsheetclass1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: TextButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                // shape: RoundedRectangleBorder(
                //     borderRadius: BorderRadius.circular(20)),
                enableDrag: false,
                // isDismissible: false,

                backgroundColor: Colors.transparent,
                builder: (BuildContext context) {
                  return Container(
                      decoration: const BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(
                                top: Radius.circular(20)),
                        color: Colors.white,
                      ),
                      height: MediaQuery.of(context).size.height * 0.75,
                      child: const Searchbarlistview());
                });
          },
          child: const Text('data'),
        ),
      ),
    );
  }
}
