import 'package:flutter/material.dart';

class TimePicker extends StatefulWidget {
  const TimePicker({Key? key}) : super(key: key);

  @override
  State<TimePicker> createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  TimeOfDay time = const TimeOfDay(hour: 06, minute: 12);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Time Picker'),
      ),
      body: Center(
        child: Text(
          '${time.hour}:${time.minute}',
          style: const TextStyle(
            fontSize: 60,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          TimeOfDay? newTime = await showTimePicker(context: context, initialTime: time);
          if (newTime != null) {
            setState(() {
              time = newTime;
            });
          }
        },
        child: const Icon(Icons.access_time_outlined),
      ),
    );
  }
}
