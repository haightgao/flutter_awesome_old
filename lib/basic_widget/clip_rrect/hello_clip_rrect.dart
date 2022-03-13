import 'package:flutter/material.dart';

class HelloClipRRect extends StatelessWidget {
  const HelloClipRRect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ClipRRect'),
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.network(
            'https://images.unsplash.com/photo-1640622658353-c6cecbe91488?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
            width: 350,
          ),
        ),
      ),
    );
  }
}
