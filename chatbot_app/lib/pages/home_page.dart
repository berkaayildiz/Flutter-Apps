import 'dart:async';

import 'package:flutter/material.dart';

import '../constants/colors.dart';

import '../data/answer_button_data.dart';
import '../data/chat_data.dart';

import '../logic/bot_answer.dart';

import '../widgets/answer_button.dart';
import '../widgets/message_card.dart';

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

  final ScrollController _scrollController = ScrollController();

  _scrollToBottom() {
    _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) => _scrollToBottom());
    return Scaffold(
      backgroundColor: purple,
      appBar: AppBar(
        backgroundColor: purple,
        toolbarHeight: 50,
        title: const Text('C H A T  B O T'),
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 7,
            child: ListView(
                controller: _scrollController,
                children: messages
                    .map(
                      (message) => MessageCard(message),
                    )
                    .toList()
                // Displaying the chat here.
                ),
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
