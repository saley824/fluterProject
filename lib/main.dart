import 'package:flutter/material.dart';
import 'package:prov_project/posts_screen.dart';
import 'home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Form Styling Demo';
    return const MaterialApp(
      title: appTitle, home: Home(),
      // home: PostsScreen(),
    );
  }
}
