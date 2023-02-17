import 'dart:async';

import 'package:chatbot_app/logic/greeting_user.dart';
import 'package:chatbot_app/logic/number_guessing_game.dart';
import 'package:chatbot_app/widgets/message_card.dart';
import 'package:flutter/material.dart';

import '../data/chat_data.dart';
import '../data/answer_button_data.dart';
import '../logic/bot_answer.dart';
import '../widgets/answer_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void callback() {
    setState(() {
      answers.clear();
      botAnswer();
    });
    Timer(const Duration(seconds: 1), () {
      setState(() {});
    });
    Timer(const Duration(seconds: 2), () {
      setState(() {});
    });
    Timer(const Duration(seconds: 3), () {
      setState(() {});
    });
  }
  // TODO: Fix this callback method.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: const Text('C H A T  B O T'),
        elevation: 1,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 7,
            child: ListView(
                children: messages
                    .map(
                      (message) => MessageCard(message),
                    )
                    .toList()
                // Displaying the chat here.
                ),
          ),
          Expanded(
            flex: 2,
            child: ListView(
                children: answers
                    .map(
                      (answer) => Center(
                        child: AnswerButton(
                            messageContext: answer, callback: callback),
                      ),
                    )
                    .toList()
                // Displaying the buttons here.
                ),
          ),
        ],
      ),
    );
  }
}
