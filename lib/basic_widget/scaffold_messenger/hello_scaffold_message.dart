import 'package:flutter/material.dart';

class HelloScaffoldMessenger extends StatelessWidget {
  const HelloScaffoldMessenger({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScaffoldMessenger'),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              // MaterialApp 不用配置 scaffoldMessengerKey
              const SnackBar(content: Text('This is message')),
            );
          },
          child: const Text('Show Message'),
        ),
      ),
    );
  }
}
