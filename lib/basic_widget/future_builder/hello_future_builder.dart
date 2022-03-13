import 'package:flutter/material.dart';

class HelloFutureBuilder extends StatefulWidget {
  const HelloFutureBuilder({Key? key}) : super(key: key);

  @override
  State<HelloFutureBuilder> createState() => _HelloFutureBuilderState();
}

Future<String> getData() async {
  await Future.delayed(const Duration(seconds: 1));
  // throw 'An error occured';
  return 'It works';
}

class _HelloFutureBuilderState extends State<HelloFutureBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FutureBuilder'),
      ),
      body: Center(
        child: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator.adaptive();
            }
            if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            } else {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(snapshot.data.toString()),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {});
                    },
                    child: const Text('Refresh'),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
