import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:prov_project/input_provider.dart';

import 'colors.dart';

class CustomForm extends StatelessWidget {
  const CustomForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<InputProvider>(
        builder: (context, inputProvider, child) => inputProvider.showScreen ==
                ShowScreen.first
            ? Column(children: [
                const SizedBox(
                  width: 10, //nema potrebe za sirino
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
              ])
            : ListView.builder(
                //rekli smo ListView.builder   DONE
                padding: const EdgeInsets.all(12.0),
                itemCount: inputProvider.inputs.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      //ovo mozes odvojiti u poseban widget i onda ga iskoristiti za listu onih title-ova
                      height: 40,
                      decoration: BoxDecoration(
                          color: ColorSelect.yellow,
                          border: Border.all(
                            color: ColorSelect.white,
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30))),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.list,
                            color: ColorSelect.white,
                          ),
                          Text(inputProvider.inputs[index],
                              style: const TextStyle(color: ColorSelect.white)),
                        ],
                      )
                      //pokusaj sam napraviti identican prikaz ali sa kontejnerom zaobljenih uglova i obojenih ivica
                      //neka ostane ikonica ispred string-a
                      // leading: const Icon(Icons.list),
                      // title: Text(inputProvider.inputs[index]),
                      // tileColor: Color.fromARGB(255, 210, 188, 17),
                      // textColor: Colors.white,
                      // iconColor: Colors.white,
                      );
                },
              ));
  }
}
