import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'constants/constants.dart';
import '../controllers/conversation_controller.dart';
import '../pages/home_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ConversationController(),
      child: const ChatBotApp(),
    ),
  );
}

class ChatBotApp extends StatelessWidget {
  const ChatBotApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(
          useMaterial3: true,
          primaryColor: themeColor,
          appBarTheme: const AppBarTheme(
            toolbarHeight: 50,
            elevation: 0,
            color: themeColor,
          ),
          scaffoldBackgroundColor: themeColor),
    );
  }
}
