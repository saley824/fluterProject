import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/post.dart';

Future<Post> getPosts() async {
  final res =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));

  if (res.statusCode == 200) {
    return Post.fromJson(jsonDecode(res.body));
  } else {
    throw Exception('Failed to load Post');
  }
}
