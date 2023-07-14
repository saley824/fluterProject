import 'package:flutter/material.dart';

import '../colors.dart';

class PostListItem extends StatelessWidget {
  final String item;
  const PostListItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
        //ovo mozes odvojiti u poseban widget i onda ga iskoristiti za listu onih title-ova DONE
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
