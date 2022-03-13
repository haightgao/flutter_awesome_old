import 'package:flutter/material.dart';

class HelloSelectableText extends StatefulWidget {
  const HelloSelectableText({Key? key}) : super(key: key);

  @override
  State<HelloSelectableText> createState() => _HelloSelectableTextState();
}

class _HelloSelectableTextState extends State<HelloSelectableText> {
  String _selectedText = '';
  final text = '穿越成家境中落的杯具书生，外有欠债大笔，内有年幼小妹，前世为会计师的李凌想了想：种田是不可能种田的，这辈子都没加这个天赋点，做上门女婿、给富婆当二爷模样长得又不上档次，只就有做生意、考科举这种事情，才能维持得了生活的样子。于是，在这个鱼龙混杂的年代里，一代巨商横空出世！';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SelectableText'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '选择的文本：$_selectedText',
              style: const TextStyle(
                color: Colors.blue,
              ),
            ),
            TextSelectionTheme(
              data: const TextSelectionThemeData(
                selectionColor: Colors.yellow,
              ),
              child: SelectableText(
                text,
                onSelectionChanged: (selection, cause) {
                  setState(
                    () {
                      _selectedText = text.substring(selection.start, selection.end);
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
