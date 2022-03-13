import 'package:flutter/material.dart';

class HelloModalBottomSheet extends StatefulWidget {
  const HelloModalBottomSheet({Key? key}) : super(key: key);

  @override
  State<HelloModalBottomSheet> createState() => _HelloModalBottomSheetState();
}

class _HelloModalBottomSheetState extends State<HelloModalBottomSheet> {
  bool? _modalBottomSheetResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ModalBottomSheet'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('ModalBottomSheet 结果：$_modalBottomSheetResult'),
            const SizedBox(height: 10),
            ElevatedButton(
              child: const Text('Modal Bottom Sheet'),
              onPressed: () async {
                final result = await showModalBottomSheet(
                  context: context,
                  builder: (context) => SizedBox(
                    height: 400,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context, true);
                            },
                            child: const Text('确定'),
                          ),
                          const SizedBox(width: 4),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context, false);
                            },
                            child: const Text('取消'),
                          ),
                        ],
                      ),
                    ),
                  ),
                );

                setState(() {
                  _modalBottomSheetResult = result;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
