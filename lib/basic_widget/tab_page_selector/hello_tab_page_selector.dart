import 'package:flutter/material.dart';

class HelloTabPageSelector extends StatefulWidget {
  const HelloTabPageSelector({Key? key}) : super(key: key);

  @override
  State<HelloTabPageSelector> createState() => _HelloTabPageSelectorState();
}

class _HelloTabPageSelectorState extends State<HelloTabPageSelector> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabPageSelector'),
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'Tab1',
              ),
              Tab(
                text: 'Tab2',
              ),
              Tab(
                text: 'Tab3',
              ),
            ],
          ),
        ),
        body: const Center(
          child: TabPageSelector(
            indicatorSize: 16,
            color: Colors.pink,
            selectedColor: Colors.purple,
          ),
        ),
      ),
    );
  }
}
