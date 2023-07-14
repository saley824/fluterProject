import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'buttons.dart';
import 'custom_form.dart';
import 'providers/input_provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => InputProvider(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Naslov"),
        ),
        body: const Column(
          children: [Expanded(child: CustomForm()), Buttons()],
        ),
      ),
    );
  }
}
