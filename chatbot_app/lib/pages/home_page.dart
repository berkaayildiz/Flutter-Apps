import 'dart:ui';

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
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 53.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: AppBar(
              title: const Text(appBarTitle),
            ),
          ),
        ),
      ),
      body: Column(
        children: const [ChatScreen(), ButtonScreen()],
      ),
    );
  }
}
