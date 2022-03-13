import 'package:flutter/material.dart';

class HelloChoiceChip extends StatefulWidget {
  const HelloChoiceChip({Key? key}) : super(key: key);

  @override
  State<HelloChoiceChip> createState() => _HelloChoiceChipState();
}

class _HelloChoiceChipState extends State<HelloChoiceChip> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChoiceChip widget'),
      ),
      body: Center(
        child: ChoiceChip(
          label: const Text('ChoiceClip'),
          avatar: const Icon(
            Icons.account_circle,
            color: Colors.black54,
          ),
          selected: _isSelected,
          selectedColor: Colors.pink,
          onSelected: (newValue) {
            setState(() {
              _isSelected = newValue;
            });
          },
        ),
      ),
    );
  }
}
