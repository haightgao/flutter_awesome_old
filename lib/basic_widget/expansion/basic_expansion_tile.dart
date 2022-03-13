import 'package:flutter/material.dart';

class BasicExpansionTile extends StatelessWidget {
  const BasicExpansionTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const ExpansionTile(
        title: Text('See more'),
        leading: Icon(Icons.info),
        children: [
          ListTile(title: Text('First')),
          ListTile(title: Text('Second')),
          ListTile(title: Text('Third')),
        ],
      ),
    );
  }
}
