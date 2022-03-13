import 'package:flutter/material.dart';

class HelloPositioned extends StatelessWidget {
  const HelloPositioned({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Positioned'),
      ),
      body: Center(
        child: Stack(
          children: [
            Positioned(
              left: 40,
              top: 40,
              child: Image.network(
                'https://cdn.pixabay.com/photo/2013/07/18/20/26/sea-164989_1280.jpg',
                width: 200,
              ),
            ),
            Positioned(
              left: 80,
              top: 80,
              child: Image.network(
                'https://cdn.pixabay.com/photo/2013/07/18/20/26/sea-164989_1280.jpg',
                width: 200,
              ),
            ),
            Positioned(
              left: 120,
              top: 120,
              child: Image.network(
                'https://cdn.pixabay.com/photo/2013/07/18/20/26/sea-164989_1280.jpg',
                width: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
