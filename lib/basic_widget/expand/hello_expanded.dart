import 'package:flutter/material.dart';

class HelloExpanded extends StatelessWidget {
  const HelloExpanded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded'),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.blue,
                height: 200,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.red,
                height: 200,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.green,
                height: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
