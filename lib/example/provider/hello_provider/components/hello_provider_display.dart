import 'package:flutter/material.dart';
import 'package:flutter_awesome/example/provider/hello_provider/hello_provider_count_provider.dart';
import 'package:provider/provider.dart';

class HelloProviderDisplay extends StatelessWidget {
  const HelloProviderDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int count = Provider.of<CountProvider>(context).count;

    return Text(
      '当前值： $count',
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
