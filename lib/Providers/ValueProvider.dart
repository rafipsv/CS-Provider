// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ValueProvider with ChangeNotifier {
  int x = 10;

  void increment() {
    x++;
    notifyListeners();
  }
}
