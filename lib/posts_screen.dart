import 'package:flutter/material.dart';
import 'package:prov_project/service/get_posts.dart';

import 'models/post.dart';

class PostsScreen extends StatefulWidget {
  const PostsScreen({super.key});

  @override
  State<PostsScreen> createState() => _MyPostsState();
}

class _MyPostsState extends State<PostsScreen> {
  late Future<Post> futPost;
  @override
  void initState() {
    super.initState();
    futPost = getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Posts")),
      body: FutureBuilder<Post>(
          future: futPost,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data!.title);
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return const CircularProgressIndicator();
          }),
    );
  }
}
