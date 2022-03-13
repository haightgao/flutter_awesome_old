import 'package:flutter/cupertino.dart';

class CountProvider extends ChangeNotifier {
  int count;
  CountProvider({this.count = 0});

  void add() {
    ++count;
    notifyListeners();
  }
}
