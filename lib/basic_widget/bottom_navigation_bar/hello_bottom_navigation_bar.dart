import 'package:flutter/material.dart';

class HelloBottomNavigationBar extends StatefulWidget {
  const HelloBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<HelloBottomNavigationBar> createState() => _HelloBottomNavigationBarState();
}

class _HelloBottomNavigationBarState extends State<HelloBottomNavigationBar> {
  int _currentIndex = 0;
  List<Widget> body = const [
    Icon(Icons.home, size: 60, color: Colors.red),
    Icon(Icons.menu, size: 60, color: Colors.green),
    Icon(Icons.person, size: 60, color: Colors.blue),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar'),
      ),
      body: Center(
        child: body[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Person'),
        ],
      ),
    );
  }
}
