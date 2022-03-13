import 'package:flutter/material.dart';

class HelloTooltip extends StatelessWidget {
  const HelloTooltip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tooltip'),
      ),
      body: Center(
        child: Tooltip(
          message: 'Image message',
          // waitDuration: const Duration(microseconds: 200),
          child: Image.network('https://cdn.pixabay.com/photo/2013/07/18/20/26/sea-164989_1280.jpg'),
        ),
      ),
    );
  }
}
