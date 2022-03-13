import 'package:flutter/material.dart';

class AppCategoryTitle extends StatelessWidget {
  final String title;
  const AppCategoryTitle({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
    );
  }
}
