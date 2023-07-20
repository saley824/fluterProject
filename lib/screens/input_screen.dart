import 'package:flutter/material.dart';
import 'package:prov_project/providers/input_provider.dart';

class InputScreen extends StatelessWidget {
  final InputProvider inputProvider;
  const InputScreen({super.key, required this.inputProvider});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(
        height: 10,
      ),
      TextField(
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
        ),
        controller: inputProvider.controller,
      ),
      ElevatedButton(
        onPressed: () {
          inputProvider.add(inputProvider.controller.text);
        },
        child: const Text("Click"),
      ),
    ]);
  }
}
