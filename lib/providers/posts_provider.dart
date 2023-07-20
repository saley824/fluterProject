import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/post.dart';

class PostsProvider extends ChangeNotifier {
  List<Post> posts = [];
  bool isLoaded = false;

  Future<List<Post>> getPosts() async {
    final res =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    if (res.statusCode == 200) {
      List jsonResponse = json.decode(res.body);
      posts = jsonResponse.map((data) => Post.fromJson(data)).toList();
      isLoaded = true;
      //return List<Post.fromJson(jsonDecode(res.body))>;
    } else {
      throw Exception('Failed to load Post');
    }
    notifyListeners();
    return posts;
  }

  void deletePost(int id) {
    posts.removeWhere((post) => post.id == id);
    notifyListeners();
  }
}
