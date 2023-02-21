import 'package:chatbot_app/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/conversation_controller.dart';
import 'answer_button.dart';

// TODO: ButtonScreen'i de appBar gibi glassmorphic yap.

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ConversationController>(builder: (context, chat, child) {
      return Container(
        padding: const EdgeInsets.only(top: 8, bottom: 20),
        decoration: BoxDecoration(
          color: constantLayoutColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: chat.answersList
              .map(
                (answer) => Center(
                  child: AnswerButton(messageContext: answer),
                ),
              )
              .toList(),
        ),
      );
    });
  }
}
