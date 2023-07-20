import 'package:flutter/material.dart';

enum ShowScreen { first, second, third }

class InputProvider extends ChangeNotifier {
  final List<String> inputs = [];
  final TextEditingController controller = TextEditingController();
  ShowScreen showScreen = ShowScreen.first;

  void add(String input) {
    inputs.add(input);
    notifyListeners();
  }

  void removeAll() {
    inputs.clear();
    notifyListeners();
  }

  void setFirst() {
    showScreen = ShowScreen.first;
    notifyListeners();
  }

  void setSecond() {
    showScreen = ShowScreen.second;
    notifyListeners();
  }

  void setThird() {
    showScreen = ShowScreen.third;
    notifyListeners();
  }
}
