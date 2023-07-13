import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'input_provider.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    final inputProvider = Provider.of<InputProvider>(context, listen: false);

    return Column(
      children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            onPressed: () {
              inputProvider.setZero();
            },
            child: const Text('First')),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightGreen,
            ),
            onPressed: () {
              inputProvider.setOne();
            },
            child: const Text('Second'))
      ],
    );
  }
}
