import 'package:flutter/material.dart';

class HelloSpacer extends StatelessWidget {
  const HelloSpacer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spacer'),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.red,
            height: 100,
          ),
          const Spacer(
            flex: 1,
          ),
          Container(
            color: Colors.green,
            height: 100,
          ),
          const Spacer(
            flex: 2,
          ),
          Container(
            color: Colors.blue,
            height: 100,
          ),
        ],
      ),
    );
  }
}
