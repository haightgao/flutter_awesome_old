import 'package:flutter/material.dart';

class HelloTable extends StatelessWidget {
  const HelloTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TableRow _tableRow = const TableRow(
      children: [
        Padding(
          padding: EdgeInsets.all(10),
          child: Text('Cell 1'),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text('Cell 2'),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text('Cell 3'),
        ),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Table'),
      ),
      body: Center(
        child: Table(
          border: TableBorder.all(),
          defaultColumnWidth: const FixedColumnWidth(120),
          children: [
            _tableRow,
            _tableRow,
            _tableRow,
            _tableRow,
            _tableRow,
          ],
        ),
      ),
    );
  }
}
