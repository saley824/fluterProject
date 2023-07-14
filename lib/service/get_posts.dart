import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/post.dart';

Future<Post> getPosts() async {
  final res =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));
  //ja sam ti juce poslao url: https://jsonplaceholder.typicode.com/posts na kom se nalazi lista objekata. mislio sam da ih sve dohvatis
  //i ispises u listi. ali tako da upotrijebis isti onaj element liste kao u prethodnom primjeru sto si radio

  if (res.statusCode == 200) {
    return Post.fromJson(jsonDecode(res.body));
  } else {
    throw Exception('Failed to load Post');
  }
}
