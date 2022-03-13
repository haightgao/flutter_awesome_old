import 'package:flutter/material.dart';

class AppContainer extends StatelessWidget {
  final List<Widget> children;
  const AppContainer({required this.children, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Wrap(
        spacing: 8,
        children: children,
      ),
    );
  }
}
