import 'package:flutter/material.dart';

class HelloGridPaper extends StatelessWidget {
  const HelloGridPaper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridPaper'),
      ),
      body: const SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: GridPaper(
          color: Colors.blue,
          divisions: 1,
          interval: 200,
          subdivisions: 8,
        ),
      ),
    );
  }
}
