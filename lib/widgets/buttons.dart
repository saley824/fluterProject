import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../colors.dart';
import '../providers/input_provider.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<InputProvider>(
      builder: (context, inputProvider, child) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: inputProvider.showScreen == ShowScreen.first
                      ? ColorSelect.darkBlue
                      : ColorSelect.lightBlue,
                ),
                onPressed: () {
                  inputProvider.setFirst();
                },
                child: const Text('First')),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: inputProvider.showScreen == ShowScreen.second
                      ? ColorSelect.darkBlue
                      : ColorSelect.lightBlue,
                ),
                onPressed: () {
                  inputProvider.setSecond();
                },
                child: const Text('Second')),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: inputProvider.showScreen == ShowScreen.third
                      ? ColorSelect.darkBlue
                      : ColorSelect.lightBlue,
                ),
                onPressed: () {
                  inputProvider.setThird();
                },
                child: const Text('Third')),
          ),
        ],
      ),
    );
  }
}
