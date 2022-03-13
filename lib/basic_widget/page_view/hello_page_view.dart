import 'package:flutter/material.dart';

class HelloPageView extends StatelessWidget {
  const HelloPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final page1 = Container(
      color: Colors.red,
      child: const Center(
        child: Text(
          'Page 1',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
    );

    final page2 = Container(
      color: Colors.green,
      child: const Center(
        child: Text(
          'Page 2',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
    );

    final page3 = Container(
      color: Colors.blue,
      child: const Center(
        child: Text(
          'Page 3',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('PageView'),
      ),
      body: PageView(
        children: [
          page1,
          page2,
          page3,
        ],
      ),
    );
  }
}
