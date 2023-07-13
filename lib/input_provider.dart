import 'package:flutter/material.dart';

enum ShowScreen { first, second }

class InputProvider extends ChangeNotifier {
  /// Internal, private state of the cart.
  final List<String> inputs = [];
  final TextEditingController controller = TextEditingController();
  ShowScreen showScreen = ShowScreen.first;
  //int show = 0; //Pokisaj ovo rijesiti sa enumeracijom.Pricali smo juce i tome.

  void add(String input) {
    inputs.add(input);
    notifyListeners();
  }

  void removeAll() {
    inputs.clear();
    notifyListeners();
  }

  void setZero() {
    showScreen = ShowScreen.first;
    notifyListeners();
  }

  void setOne() {
    showScreen = ShowScreen.second;
    notifyListeners();
  }
}
