import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants/colors.dart';
import '../controllers/conversation_controller.dart';
import '../logic/app_flow.dart';
import '../widgets/button_screen.dart';
import '../widgets/chat_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void callback() {
    var chat = Provider.of<ConversationController>(context, listen: false);
    chat.clearAllButtons();
  }
  // TODO: Fix this callback method.

  @override
  Widget build(BuildContext context) {
    appFlow(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(appBarTitle),
      ),
      body: Column(
        children: [
          const Expanded(child: ChatScreen()),
          ButtonScreen(callback: callback),
          const SizedBox(height: 30)
        ],
      ),
    );
  }
}
