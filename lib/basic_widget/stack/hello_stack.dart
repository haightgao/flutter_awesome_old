import 'package:flutter/material.dart';

class HelloStack extends StatelessWidget {
  const HelloStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
      ),
      body: Center(
        child: Stack(
          children: [
            Center(
              child: Image.network(
                'https://cdn.pixabay.com/photo/2021/08/25/20/42/field-6574455_1280.jpg',
              ),
            ),
            Center(
              child: Image.network(
                'https://cdn.pixabay.com/photo/2020/07/03/14/28/hands-5366493_1280.jpg',
                width: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
