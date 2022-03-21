import 'dart:math';

import 'package:flutter/material.dart';

class HelloGestureDetector extends StatefulWidget {
  const HelloGestureDetector({Key? key}) : super(key: key);

  @override
  State<HelloGestureDetector> createState() => _HelloGestureDetectorState();
}

class _HelloGestureDetectorState extends State<HelloGestureDetector> {
  int _count = 0;
  double _left = 0;
  double _top = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GestureDetector'),
      ),
      body: Stack(
        children: [
          Positioned(
            left: _left,
            top: _top,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  ++_count;
                });
              },
              onPanUpdate: (details) {
                _top = max(0, _top + details.delta.dy);
                _left = max(0, _left + details.delta.dx);
                setState(() {});
              },
              child: Container(
                width: 200,
                height: 200,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    _count.toString(),
                    style: const TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
