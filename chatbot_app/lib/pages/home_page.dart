import 'package:chatbot_app/widgets/frost_glass_effect.dart';
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
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 53.0),
        child: FrostGlassEffect(
          child: AppBar(
            title: const Text(appBarTitle),
          ),
        ),
      ),
      body: const ChatScreen(),
      bottomSheet: const FrostGlassEffect(child: ButtonScreen()),
    );
  }
}
