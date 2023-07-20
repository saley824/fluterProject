import 'package:flutter/material.dart';
import 'package:prov_project/message_service/message_service.dart';
import 'package:provider/provider.dart';
import 'widgets/buttons.dart';
import 'custom_form.dart';
import 'providers/input_provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  final _messagingService =
      MessagingService(); // Instance of MessagingService for handling notifications

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => InputProvider(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Naslov"),
        ),
        body: const Column(
          children: [Expanded(child: CustomForm()), Buttons()],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _messagingService
        .init(context); // Initialize MessagingService to handle notifications
  }
}
