import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tdl_logic_code_withui/mobxpractise_sums/controller/mobxclass1.dart';
import 'package:tdl_logic_code_withui/mobxpractise_sums/view/firstscreen.dart';
import 'package:tdl_logic_code_withui/popup_sort_project_mobx/view/firstlogicscreen.dart';
import 'package:tdl_logic_code_withui/popup_sort_project_simple/view/firstlogicscreen_tsest.dart';
import 'package:tdl_logic_code_withui/pracex.dart';
import 'package:tdl_logic_code_withui/sharedprefrenceexample/sharedpref_ex.dart';
import 'package:tdl_logic_code_withui/tableclass1/tabledo_view.dart';

import 'contollercamera.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (ctx) => Counter()),
        ChangeNotifierProvider(create: (ctx) => GetImage()),

      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,

          // textTheme: TextTheme(
          //   bodyText1: TextStyle(color: Colors.red),
          // ),
        ),
        // theme: ThemeData.dark(),
        home:
        // const TableDo1(),
        // FirstScreen(),
        // SharedPrefExample(),
          Newpracex(),


// const SortingDataPage(),
// const SortingDataPageTest(),
      ),
    );
  }
}
