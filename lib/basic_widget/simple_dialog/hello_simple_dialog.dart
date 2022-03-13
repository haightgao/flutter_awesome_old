import 'package:flutter/material.dart';

class HelloSimpleDialog extends StatefulWidget {
  const HelloSimpleDialog({Key? key}) : super(key: key);

  @override
  State<HelloSimpleDialog> createState() => _HelloSimpleDialogState();
}

class _HelloSimpleDialogState extends State<HelloSimpleDialog> {
  bool? _simpleDialogResult;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SimpleDialog'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('SimpleDialog Result: $_simpleDialogResult'),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {
                final result = await showDialog<bool>(
                  context: context,
                  builder: (context) => SimpleDialog(
                    title: const Text('Info'),
                    contentPadding: const EdgeInsets.all(20),
                    children: [
                      const Text('Information simple dialog'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context, true);
                            },
                            child: const Text('Ok'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context, false);
                            },
                            child: const Text('Close'),
                          ),
                        ],
                      )
                    ],
                  ),
                );

                setState(() {
                  _simpleDialogResult = result;
                });
              },
              child: const Text('Show Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}
