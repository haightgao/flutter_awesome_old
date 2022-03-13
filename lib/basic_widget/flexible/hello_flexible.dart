import 'package:flutter/material.dart';

class HelloFlexible extends StatelessWidget {
  const HelloFlexible({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flexible'),
      ),
      body: Center(
        child: Column(
          children: [
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: Container(
                height: 50,
                color: Colors.blue,
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: Container(
                height: 150,
                color: Colors.orange,
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: Container(
                height: 150,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
