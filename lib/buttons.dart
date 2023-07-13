import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'colors.dart';
import 'input_provider.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<InputProvider>(
        builder: (context, inputProvider, child) =>
            //arrow function    DONE
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: inputProvider.showScreen ==
                                ShowScreen.first
                            ? ColorSelect
                                .darkBlue //pokusaj napraviti file sa definisanim bojama pa   DONE
                            //boje referencirati iz tog file-a       DONE
                            : ColorSelect.lightBlue,
                        // fixedSize:
                        //     const Size(150, 50)
                      ), //(tacka 2. u tasks file)
                      onPressed: () {
                        inputProvider.setZero();
                      },
                      child: const Text('First')),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            inputProvider.showScreen == ShowScreen.second
                                ? ColorSelect.darkBlue
                                : ColorSelect.lightBlue,
                        // fixedSize: const Size(150, 50),
                      ),
                      onPressed: () {
                        inputProvider.setOne();
                      },
                      child: const Text('Second')),
                )
              ],
            ));
  }
}
