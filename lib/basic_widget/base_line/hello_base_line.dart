import 'package:flutter/material.dart';

class HelloBaseLine extends StatelessWidget {
  const HelloBaseLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BaseLine'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.blue,
                  child: Text('没有使用BaseLine'),
                ),
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.redAccent,
                  child: const Baseline(
                    baselineType: TextBaseline.alphabetic,
                    baseline: 50,
                    child: Text('baseLine 50'),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.greenAccent,
                  child: const Baseline(
                    baselineType: TextBaseline.alphabetic,
                    baseline: 100,
                    child: Text('baseLine 100'),
                  ),
                ),
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.yellow,
                  child: const Baseline(
                    baselineType: TextBaseline.alphabetic,
                    baseline: 150,
                    child: Text('baseLine 150'),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
