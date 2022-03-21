import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class HelloPathProvider extends StatefulWidget {
  const HelloPathProvider({Key? key}) : super(key: key);

  @override
  State<HelloPathProvider> createState() => _HelloPathProviderState();
}

class _HelloPathProviderState extends State<HelloPathProvider> {
  String? appDocPath;
  String? appSupperDir;
  String? appTempDir;

  @override
  void initState() {
    super.initState();

    Future.microtask(() async {
      appDocPath = (await getApplicationDocumentsDirectory()).toString();
      appSupperDir = (await getApplicationSupportDirectory()).toString();
      appTempDir = (await getTemporaryDirectory()).toString();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PathProvider'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('AppDocPath:$appDocPath', style: const TextStyle(color: Colors.blue)),
            const SizedBox(height: 20),
            Text('AppSuportDir:$appSupperDir', style: const TextStyle(color: Colors.red)),
            const SizedBox(height: 20),
            Text('appTempDir:$appTempDir', style: const TextStyle(color: Colors.deepPurple)),
          ],
        ),
      ),
    );
  }
}
