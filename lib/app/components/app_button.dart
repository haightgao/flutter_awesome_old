import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  final Widget page;

  const AppButton({required this.text, required this.page, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
      child: Text(text),
    );
  }
}
