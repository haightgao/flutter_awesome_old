import 'package:flutter/material.dart';

class HelloInkWell extends StatefulWidget {
  const HelloInkWell({Key? key}) : super(key: key);

  @override
  State<HelloInkWell> createState() => _HelloInkWellState();
}

class _HelloInkWellState extends State<HelloInkWell> {
  Color boxColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InkWell'),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              boxColor = Colors.blue;
            });
          },
          onDoubleTap: () {
            setState(() {
              boxColor = Colors.yellow;
            });
          },
          onLongPress: () {
            setState(() {
              boxColor = Colors.red;
            });
          },
          child: Ink(
            width: 200,
            height: 200,
            color: boxColor,
            child: const Center(
              child: FlutterLogo(
                size: 150,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
