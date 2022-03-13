import 'package:flutter/material.dart';

class HelloPopupMenuButton extends StatefulWidget {
  const HelloPopupMenuButton({Key? key}) : super(key: key);

  @override
  State<HelloPopupMenuButton> createState() => _HelloPopupMenuButtonState();
}

class _HelloPopupMenuButtonState extends State<HelloPopupMenuButton> {
  String title = 'PopupMenuButton';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PopupMenuButton'),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              const PopupMenuItem(
                child: Text('first item'),
                value: 'first item',
              ),
              const PopupMenuItem(
                child: Text('second item'),
                value: 'second item',
              ),
            ],
            onSelected: (String value) {
              setState(() {
                title = value;
              });
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
