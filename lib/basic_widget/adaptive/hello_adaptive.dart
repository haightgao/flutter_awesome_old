import 'package:flutter/material.dart';

class HelloAdaptive extends StatelessWidget {
  const HelloAdaptive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adaptive'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Slider(
              value: 0.5,
              onChanged: (double newValue) {},
              label: 'Slider no adaptive',
            ),
            Slider.adaptive(
              value: 0.5,
              onChanged: (double newValue) {},
              label: 'adaptive',
            ),
            SwitchListTile(title: const Text('Switch List Tile No adaptive'), value: true, onChanged: (bool newValue) {}),
            SwitchListTile.adaptive(title: const Text('Switch List Tile'), value: true, onChanged: (bool newValue) {}),
            Switch.adaptive(value: true, onChanged: (bool newValue) {}),
            Icon(Icons.adaptive.share),
            const CircularProgressIndicator(),
            const CircularProgressIndicator.adaptive(),
          ],
        ),
      ),
    );
  }
}
