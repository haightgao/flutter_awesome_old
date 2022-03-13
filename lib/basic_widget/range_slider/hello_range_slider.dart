import 'package:flutter/material.dart';

class HelloRangeSlider extends StatefulWidget {
  const HelloRangeSlider({Key? key}) : super(key: key);

  @override
  State<HelloRangeSlider> createState() => _HelloRangeSliderState();
}

class _HelloRangeSliderState extends State<HelloRangeSlider> {
  RangeValues values = const RangeValues(0.1, 0.5);

  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString());

    return Scaffold(
      appBar: AppBar(
        title: const Text('RangeSlider'),
      ),
      body: Center(
        child: RangeSlider(
          values: values,
          labels: labels,
          divisions: 10,
          onChanged: (RangeValues newValues) {
            setState(() {
              values = newValues;
            });
          },
        ),
      ),
    );
  }
}
