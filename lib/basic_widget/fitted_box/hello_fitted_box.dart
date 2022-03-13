import 'package:flutter/material.dart';

class HelloFittedBox extends StatelessWidget {
  const HelloFittedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FittedBox'),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 150,
          color: Colors.red,
          padding: const EdgeInsets.all(10),
          child: const FittedBox(
            child: Text(
              'FLUTTER MAPP',
              style: TextStyle(
                fontSize: 100,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
