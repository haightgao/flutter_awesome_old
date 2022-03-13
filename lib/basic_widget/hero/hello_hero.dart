import 'package:flutter/material.dart';

class HelloHero extends StatelessWidget {
  const HelloHero({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello hero'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const DetailPage(),
              ),
            );
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Hero(
              tag: 'tag',
              child: Image.network(
                'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg',
                width: 200,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello hero - detail'),
      ),
      body: Container(
        child: Hero(
          tag: 'tag',
          child: Image.network(
            'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg',
          ),
        ),
      ),
    );
  }
}
