import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'input_provider.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<InputProvider>(builder: (context, inputProvider, child) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: inputProvider.show == 0
                      ? const Color.fromARGB(255, 12, 53, 87)
                      : Colors.lightBlue,
                  fixedSize: const Size(150, 50)),
              onPressed: () {
                inputProvider.setZero();
              },
              child: const Text('First')),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: inputProvider.show == 1
                      ? Color.fromARGB(255, 12, 53, 87)
                      : Colors.lightBlue,
                  fixedSize: const Size(150, 50)),
              onPressed: () {
                inputProvider.setOne();
              },
              child: const Text('Second'))
        ],
      );
    });
  }
}
