import 'package:flutter/material.dart';
import 'package:flutter_awesome/example/provider/hello_provider/components/hello_provider_action.dart';
import 'package:flutter_awesome/example/provider/hello_provider/components/hello_provider_display.dart';
import 'package:flutter_awesome/example/provider/hello_provider/hello_provider_count_provider.dart';
import 'package:provider/provider.dart';

class HelloProviderMain extends StatelessWidget {
  const HelloProviderMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => CountProvider())],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Hello Provider'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              HelloProviderDisplay(),
              SizedBox(height: 10),
              HelloProviderAction(),
            ],
          ),
        ),
      ),
    );
  }
}
