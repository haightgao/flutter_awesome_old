import 'package:flutter/material.dart';

class HelloAnimatedCrossFade extends StatefulWidget {
  const HelloAnimatedCrossFade({Key? key}) : super(key: key);

  @override
  State<HelloAnimatedCrossFade> createState() => _HelloAnimatedCrossFadeState();
}

class _HelloAnimatedCrossFadeState extends State<HelloAnimatedCrossFade> {
  bool _state = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedCrossFade'),
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                _state = !_state;
              });
            },
            child: const Text(
              'Switch',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: AnimatedCrossFade(
        firstChild: Image.asset('assets/basic_widget/animated_cross_fade/hello_animated_cross_fade/sea01.jpg'),
        secondChild: Image.asset('assets/basic_widget/animated_cross_fade/hello_animated_cross_fade/sea02.jpg'),
        crossFadeState: _state ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        duration: const Duration(seconds: 1),
      ),
    );
  }
}
