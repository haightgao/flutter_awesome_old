import 'package:flutter/material.dart';

class HelloDropdownButton extends StatefulWidget {
  const HelloDropdownButton({Key? key}) : super(key: key);

  @override
  State<HelloDropdownButton> createState() => _HelloDropdownButtonState();
}

class _HelloDropdownButtonState extends State<HelloDropdownButton> {
  String? _value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DropdownButton'),
      ),
      body: Center(
        child: DropdownButton(
          // iconSize: 24,
          // iconEnabledColor: Colors.green,
          // icon: const Icon(Icons.flutter_dash),
          isExpanded: true,
          value: _value,
          items: const [
            DropdownMenuItem<String>(
              child: Text('Dash'),
              value: 'Dash',
            ),
            DropdownMenuItem<String>(
              child: Text('Snoo'),
              value: 'Snoo',
            ),
            DropdownMenuItem<String>(
              child: Text('Sparky'),
              value: 'Sparky',
            ),
          ],
          onChanged: (String? value) {
            setState(() {
              _value = value;
            });
          },
        ),
      ),
    );
  }
}
