import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'buttons.dart';
import 'form.dart';
import 'input_provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => InputProvider(),
        child: Scaffold(
            appBar: AppBar(
              title: const Text("Naslov"),
            ),
            body: Center(
              child: Column(
                children: [Buttons(), Expanded(child: CustomForm())],
              ),
            )));
  }
}