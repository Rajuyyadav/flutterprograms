import 'package:flutter/material.dart';

import 'firstscreen.dart';

class Newtable1 extends StatelessWidget {
  const Newtable1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_outlined), onPressed: () {
          Navigator.pop(context, MaterialPageRoute(builder: (context)=>FirstScreen()),);

        },),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.navigate_next_rounded)),
          SizedBox(width: 30,)

        ],
      ),
      body: Column(
        children: [
          Table(
            // border:TableBorder(right: BorderSide(color: Colors.red)) ,
            border: TableBorder.all(color: Colors.blue),

            children: [

              // (
              // dependencies:
              //   flutter:
              //     sdk: flutter
              //   table_calendar: ^2.1.0
              // )

              // color: selectedindex==index?(Colors.black):Colors.transparent, )
              // TableRow(children: [
              //   Column(
              //     children: [Text('s.rollno:')],
              //   ),
              //   Column(
              //     children: [Text('Sname:')],
              //   ),
              //   Column(
              //     children: [Text('smarks:')],
              //   )
              // ]),
              TableRow(children: [
                Column(
                  children: [Text('s.rollno:')],
                ),
                Column(
                  children: [Text('Sname:')],
                ),
                Column(
                  children: [Text('smarks:')],
                )
              ]),

              TableRow(children: [
                Column(
                  children: [Text('1')],
                ),
                Column(
                  children: [Text('ravi')],
                ),
                Column(
                  children: [Text('85')],
                )
              ]),

              TableRow(
                children: [
                  Column(
                    children: [Text('2')],
                  ),
                  Column(
                    children: [Text('ramesh')],
                  ),
                  Column(
                    children: [Text('93')],
                  )
                ],
              ),
            ],
          ),
          DataTable(
            columns: [
              DataColumn(
                label: Text('ID'),
              ),
              DataColumn(label: Text('Name')),
              DataColumn(label: Text('Profession')),
            ],
            rows: [
              DataRow(
                cells: [
                  DataCell(Text('101')),
                  DataCell(Text('ravi')),
                  DataCell(Text('engineer')),
                ],
              ),
              DataRow(cells: [
                DataCell(Text('102')),
                DataCell(Text('ramesh')),
                DataCell(Text('CA'))
              ]),
            ],
          ),
        ],
      ),
    );
  }
}
