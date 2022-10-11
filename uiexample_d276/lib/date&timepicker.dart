// import 'dart:js';

import 'package:flutter/material.dart';

class Dateandtimepicker extends StatelessWidget {
  const Dateandtimepicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                // DatePickerDialog(
                //     initialDate: DateTime.now(),
                //     firstDate: DateTime(2000),
                //     lastDate: DateTime(2050),
                // );
                showmydate(context);
              },
              child: Text('ShowDate')
          ),
          ElevatedButton(
              onPressed: () {
                showmytime(context);
              },
              child: Text('ShowTime')
          ),
        ],
      ),
    );
  }

  void showmydate(BuildContext context) async {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1990),
      lastDate: DateTime(2050),
    ).then((value) => print('bye'));
  }

  Future<void> showmytime(BuildContext context) async {
    DateTime time = DateTime.now();
    showTimePicker(
            context: context,
            initialTime: TimeOfDay(hour: time.hour, minute: time.minute))
        .then((value) =>
            print('${value!.hour}:${value.minute}-${value.period.name}  ')

                //

        );
  }
}
