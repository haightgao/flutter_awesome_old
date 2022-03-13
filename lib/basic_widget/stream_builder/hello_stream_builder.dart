import 'package:flutter/material.dart';

class HelloStreamBuilder extends StatefulWidget {
  const HelloStreamBuilder({Key? key}) : super(key: key);

  @override
  State<HelloStreamBuilder> createState() => _HelloStreamBuilderState();
}

class _HelloStreamBuilderState extends State<HelloStreamBuilder> {
  Stream<int> stream = (() async* {
    await Future.delayed(const Duration(seconds: 2));
    yield 1;
    await Future.delayed(const Duration(seconds: 1));
    yield 2;
    await Future.delayed(const Duration(seconds: 1));
    yield 3;
  })();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StreamBuilder'),
      ),
      body: Center(
        child: StreamBuilder(
          stream: stream,
          initialData: 0,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator.adaptive();
            }
            if (snapshot.hasError) {
              return const Text('Error');
            } else {
              return Text(
                snapshot.data.toString(),
                style: const TextStyle(
                  fontSize: 30,
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
