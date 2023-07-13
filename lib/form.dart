import 'package:flutter/material.dart';
import 'package:prov_project/input_provider.dart';
import 'package:provider/provider.dart';

class CustomForm extends StatelessWidget {
  const CustomForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<InputProvider>(
      builder: (context, inputProvider, child) => inputProvider.show == 0
          ? Column(children: [
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
              Text(inputProvider.inputs.toString())
            ])
          : SingleChildScrollView(
              child: Column(
                children: inputProvider.inputs
                    .map((e) => ListTile(
                          title: Text(
                            e.toString(),
                          ),
                        ))
                    .toList(),
              ),
            ),
    );
  }
}
