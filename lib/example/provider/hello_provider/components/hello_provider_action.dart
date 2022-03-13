import 'package:flutter/material.dart';
import 'package:flutter_awesome/example/provider/hello_provider/hello_provider_count_provider.dart';
import 'package:provider/provider.dart';

class HelloProviderAction extends StatelessWidget {
  const HelloProviderAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          Provider.of<CountProvider>(context, listen: false).add();
        },
        child: const Text('Add'),
      ),
    );
  }
}
