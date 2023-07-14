import 'package:flutter/material.dart';
import 'package:prov_project/service/get_posts.dart';

import 'models/post.dart';
import 'widgets/list_item.dart';

class PostsScreen extends StatefulWidget {
  const PostsScreen({super.key});

  @override
  State<PostsScreen> createState() => _MyPostsState();
}

class _MyPostsState extends State<PostsScreen> {
  late Future<List<Post>> futPost;

  @override
  void initState() {
    super.initState();
    futPost = getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Post>>(
        future:
            futPost, //future je u stvari funkcija koja ce ti dohvatiti i vratiti podatke tako da je ovdje trebalo proslijediti funkciju
        //koja bi se nalazila u provajderu. samim ti ne bi bilo potrebe da ovo bude statefull widget vec providerom za ovaj ekran
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              //rekli smo ListView.builder   DONE
              padding: const EdgeInsets.all(12.0),
              itemCount: snapshot.data?.length,
              itemBuilder: (BuildContext context, int index) {
                return ListItem(item: snapshot.data![index].title);
              },
            );
            // return Text(snapshot.data![0].title);
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return const CircularProgressIndicator();
        });
  }
}
