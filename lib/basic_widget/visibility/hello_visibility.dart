import 'package:flutter/material.dart';

class HelloVisibility extends StatefulWidget {
  const HelloVisibility({Key? key}) : super(key: key);

  @override
  State<HelloVisibility> createState() => _HelloVisibilityState();
}

class _HelloVisibilityState extends State<HelloVisibility> {
  bool _visible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Visibility'),
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                _visible = !_visible;
              });
            },
            child: const Text(
              'Switch',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const FlutterLogo(
              size: 60,
            ),
            Visibility(
              visible: _visible,
              child: Image.network('https://cdn.pixabay.com/photo/2013/07/18/20/26/sea-164989_1280.jpg'),
            ),
            const FlutterLogo(
              size: 60,
            ),
          ],
        ),
      ),
    );
  }
}
