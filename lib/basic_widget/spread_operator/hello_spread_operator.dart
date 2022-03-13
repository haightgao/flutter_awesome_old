import 'package:flutter/material.dart';

class HelloSpreadOperator extends StatelessWidget {
  const HelloSpreadOperator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> imageList = [
      const FlutterLogo(size: 60),
      const FlutterLogo(size: 60),
      const FlutterLogo(size: 60),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('SpreadOperator'),
      ),
      body: Column(
        children: [
          Image.network('https://cdn.pixabay.com/photo/2013/07/18/20/26/sea-164989_1280.jpg'),
          ...imageList,
        ],
      ),
    );
  }
}
