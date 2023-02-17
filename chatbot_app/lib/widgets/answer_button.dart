import 'package:flutter/material.dart';

import '../data/chat_data.dart';
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
        messages.add(
          Message(
              messageContent: messageContext, messageType: MessageType.sender),
        );
        callback();
      },
      style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple[400]),
      child: Text(messageContext),
    );
  }
}