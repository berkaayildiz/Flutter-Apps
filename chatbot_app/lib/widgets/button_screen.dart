import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/conversation_controller.dart';
import '../logic/bot_answer.dart';
import 'answer_button.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key, required this.callback});

  final Function callback;

  @override
  Widget build(BuildContext context) {
    return Consumer<ConversationController>(builder: (context, chat, child) {
      botAnswer(context);
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: chat.answersList
            .map(
              (answer) => Center(
                child: AnswerButton(messageContext: answer, callback: callback),
              ),
            )
            .toList(),
      );
    });
  }
}
