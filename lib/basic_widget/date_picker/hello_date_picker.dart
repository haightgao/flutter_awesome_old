import 'package:flutter/material.dart';

class HelloDatePicker extends StatefulWidget {
  const HelloDatePicker({Key? key}) : super(key: key);

  @override
  State<HelloDatePicker> createState() => _HelloDatePickerState();
}

class _HelloDatePickerState extends State<HelloDatePicker> {
  DateTime _dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DatePicker'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '${_dateTime.year}-${_dateTime.month}-${_dateTime.day}',
              style: const TextStyle(
                fontSize: 40,
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                DateTime? newDate = await showDatePicker(
                  context: context,
                  initialDate: _dateTime,
                  firstDate: DateTime(1800),
                  lastDate: DateTime(3000),
                  locale: Locale('zh'),
                );

                if (newDate != null) {
                  setState(() {
                    _dateTime = newDate;
                  });
                }
              },
              child: const Text('Get Date'),
            ),
          ],
        ),
      ),
    );
  }
}
