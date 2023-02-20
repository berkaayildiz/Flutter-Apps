import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants/colors.dart';
import '../controllers/conversation_controller.dart';
import '../models/message_model.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.messageContext, required this.callback});

  final String messageContext;
  final Function callback;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        var chat = context.read<ConversationController>();
        chat.addMessage(
          Message(
              messageContent: messageContext, messageType: MessageType.sender),
        );
        callback();
      },
      style: ElevatedButton.styleFrom(backgroundColor: buttonColor),
      child: Text(messageContext),
    );
  }
}
