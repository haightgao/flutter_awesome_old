import 'package:flutter/material.dart';

class HelloWillPopScope extends StatelessWidget {
  const HelloWillPopScope({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WillPopScope'),
        ),
        body: const Center(
          child: Text('控制返回按钮'),
        ),
      ),
      onWillPop: () async {
        return false;
      },
    );
  }
}
