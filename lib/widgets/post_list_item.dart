import 'package:flutter/material.dart';

import '../colors.dart';

class PostListItem extends StatelessWidget {
  final String title;
  final int id;

  final Function(int id) deletePost;
  const PostListItem(
      {super.key,
      required this.title,
      required this.id,
      required this.deletePost});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
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
                child: Column(children: [
              Text(id.toString(),
                  style: const TextStyle(color: ColorSelect.white)),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(color: ColorSelect.white),
                ),
              ),
            ])),
            IconButton(
                onPressed: () {
                  deletePost(id);
                },
                icon: const Icon(Icons.delete))
            // const Icon(Icons.delete, onPressed: ActionDispatcher())
          ],
        ));
  }
}
