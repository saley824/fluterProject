import 'package:flutter/material.dart';

import 'package:prov_project/providers/posts_provider.dart';
import 'package:provider/provider.dart';

import 'package:prov_project/providers/input_provider.dart';

import 'screens/posts_screen.dart';
import 'screens/input_screen.dart';
import 'widgets/list_item.dart';

class CustomForm extends StatelessWidget {
  const CustomForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<InputProvider>(builder: (_, inputProvider, child) {
      switch (inputProvider.showScreen) {
        case ShowScreen.first:
          return InputScreen(inputProvider: inputProvider);
        case ShowScreen.second:
          return ListView.builder(
            padding: const EdgeInsets.all(12.0),
            itemCount: inputProvider.inputs.length,
            itemBuilder: (BuildContext context, int index) {
              return ListItem(item: inputProvider.inputs[index]);
            },
          );

        case ShowScreen.third:
          return ChangeNotifierProvider(
            create: (_) => PostsProvider(),
            child: const PostsScreen(),
          );
      }
    });
  }
}
