import 'package:flutter/material.dart';

class HelloAlertDialog extends StatelessWidget {
  const HelloAlertDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AlertDialog'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Show Alert Dialog'),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('info'),
                contentPadding: const EdgeInsets.all(20),
                content: const Text('Information'),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop(false);
                      },
                      child: const Text('close'))
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
