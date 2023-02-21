import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/conversation_controller.dart';
import 'answer_button.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ConversationController>(builder: (context, chat, child) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: chat.answersList
            .map(
              (answer) => Center(
                child: AnswerButton(messageContext: answer),
              ),
            )
            .toList(),
      );
    });
  }
}
