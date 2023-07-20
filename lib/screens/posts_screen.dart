import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/post.dart';
import '../providers/posts_provider.dart';
import '../widgets/post_list_item.dart';

class PostsScreen extends StatelessWidget {
  const PostsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var postsProvider = Provider.of<PostsProvider>(context, listen: false);
    return FutureBuilder<List<Post>>(
        future: postsProvider.getPosts(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Consumer<PostsProvider>(builder: (context, _, child) {
              return ListView.builder(
                padding: const EdgeInsets.all(12.0),
                itemCount: snapshot.data?.length,
                itemBuilder: (BuildContext context, int index) {
                  return PostListItem(
                      deletePost: postsProvider.deletePost,
                      title: snapshot.data![index].title,
                      id: snapshot.data![index].id);
                },
              );
            });
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return const CircularProgressIndicator();
        });
  }
}
