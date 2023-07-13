import 'package:flutter/material.dart';

class InputProvider extends ChangeNotifier {
  /// Internal, private state of the cart.
  final List<String> inputs = [];
  final TextEditingController controller = TextEditingController();
  int show = 0; //Pokisaj ovo rijesiti sa enumeracijom.Pricali smo juce i tome.

  void add(String input) {
    inputs.add(input);
    notifyListeners();
  }

  void removeAll() {
    inputs.clear();
    notifyListeners();
  }

  void setZero() {
    show = 0;
    notifyListeners();
  }

  void setOne() {
    show = 1;
    notifyListeners();
  }
}
