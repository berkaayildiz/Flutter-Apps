import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../logic/greeting_user.dart';
import '../widgets/button_screen.dart';
import '../widgets/chat_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    greetingUser(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(appBarTitle),
      ),
      body: Column(
        children: const [ChatScreen(), ButtonScreen(), SizedBox(height: 30)],
      ),
    );
  }
}
