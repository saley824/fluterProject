import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:prov_project/input_provider.dart';

class CustomForm extends StatelessWidget {
  const CustomForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<InputProvider>(
        builder: (context, inputProvider, child) => inputProvider.show == 0
            ? Column(children: [
                Container(
                  //za pravljenje "praznog prostora" je najbolje koristiti SizedBox
                  margin: EdgeInsets.only(bottom: 10, top: 10),
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
              ])
            : ListView.separated(
                //rekli smo ListView.builder
                padding: const EdgeInsets.all(12.0),
                // margin: const EdgeInsets.all(12.0),
                itemCount: inputProvider.inputs.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    //pokusaj sam napraviti identican prikaz ali sa kontejnerom zaobljenih uglova i obojenih ivica
                    //neka ostane ikonica ispred string-a
                    leading: const Icon(Icons.list),
                    title: Text(inputProvider.inputs[index]),
                    tileColor: Color.fromARGB(255, 210, 188, 17),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
              ));
  }
}
