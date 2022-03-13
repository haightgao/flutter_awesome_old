import 'package:flutter/material.dart';

class HelloCheckboxListTile extends StatefulWidget {
  const HelloCheckboxListTile({Key? key}) : super(key: key);

  @override
  State<HelloCheckboxListTile> createState() => _HelloCheckboxListTileState();
}

class _HelloCheckboxListTileState extends State<HelloCheckboxListTile> {
  bool? _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CheckboxListTile'),
      ),
      body: Center(
        child: CheckboxListTile(
          title: const Text('Checkbox List Tile'),
          value: _isChecked,
          onChanged: (bool? newValue) {
            setState(() {
              _isChecked = newValue;
            });
          },
          activeColor: Colors.orangeAccent,
          checkColor: Colors.white,
          controlAffinity: ListTileControlAffinity.leading,
          tileColor: Colors.black12,
          tristate: true, // 设置true时，value才能为null，代表当前控件的第三种状态
          subtitle: const Text('subtitle'),
        ),
      ),
    );
  }
}
