import 'package:flutter/material.dart';

class HelloInteractiveViewer extends StatelessWidget {
  const HelloInteractiveViewer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        title: const Text('InteractiveViewer'),
      ),
      body: Center(
        child: InteractiveViewer(
          // boundaryMargin: const EdgeInsets.all(double.infinity),
          maxScale: 5,
          child: Image.network(
              'https://images.unsplash.com/photo-1646760749039-4e397e4067cf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2787&q=80'),
        ),
      ),
    );
  }
}
