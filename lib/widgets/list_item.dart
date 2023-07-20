import 'package:flutter/material.dart';

import '../colors.dart';

class ListItem extends StatelessWidget {
  final String item;
  const ListItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        decoration: BoxDecoration(
            color: ColorSelect.yellow,
            border: Border.all(
              color: ColorSelect.white,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(30))),
        child: Row(
          children: [
            const Icon(
              Icons.list,
              color: ColorSelect.white,
            ),
            Expanded(
                child: Text(item,
                    style: const TextStyle(color: ColorSelect.white))),
          ],
        ));
  }
}
