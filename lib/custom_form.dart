import 'package:flutter/material.dart';
import 'package:prov_project/posts_screen.dart';
import 'package:provider/provider.dart';

import 'package:prov_project/providers/input_provider.dart';

import 'widgets/list_item.dart';

class CustomForm extends StatelessWidget {
  const CustomForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<InputProvider>(builder: (context, inputProvider, child) {
      switch (inputProvider.showScreen) {
        case ShowScreen.first:
          return Column(children: [
            const SizedBox(
              //nema potrebe za sirino DONE
              height: 10,
            ),
            //za pravljenje "praznog prostora" je najbolje koristiti SizedBox   DONE
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
        //  break;
        case ShowScreen.second:
          return ListView.builder(
            //rekli smo ListView.builder   DONE
            padding: const EdgeInsets.all(12.0),
            itemCount: inputProvider.inputs.length,
            itemBuilder: (BuildContext context, int index) {
              return ListItem(item: inputProvider.inputs[index]);
            },
          );
        //   break;

        case ShowScreen.third:
          return const PostsScreen();
        //     break;
      }
    });
  }
}
