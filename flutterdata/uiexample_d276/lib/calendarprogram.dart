import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calenderexample extends StatefulWidget {
  const Calenderexample({Key? key}) : super(key: key);

  @override
  State<Calenderexample> createState() => _CalenderexampleState();
}

class _CalenderexampleState extends State<Calenderexample> {
  CalendarFormat format = CalendarFormat.month;
// void initState(){
//   super.initState();
// _controller=CalenderController;
// }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          // Center(
          //     child: Text(
          //   'Calender',
          //   style: TextStyle(
          //       color: Colors.red[900], backgroundColor: Colors.amber),
          // )),
          // ElevatedButton(onPressed: () {}, child: Text('checkdate')),
          TableCalendar(
            focusedDay: DateTime.now(),
            firstDay: DateTime(2000, 01, 01),
            //or DateTime(2000) is equal
            lastDay: DateTime(2030, 01, 01),
        calendarFormat: format,
startingDayOfWeek: StartingDayOfWeek.sunday,
            onFormatChanged: (CalendarFormat _format) {
              setState(() {
                format = _format;
              });
            },
          ),
        ],
      ),
    );
  }
}
