import 'package:flutter/material.dart';

import '../models/message_model.dart';

class MessageCard extends StatelessWidget {
  const MessageCard(this.message, {super.key});

  final Message message;

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: message.messageType == MessageType.reciever
            ? Alignment.centerLeft
            : Alignment.centerRight,
        child: Container(
          margin: const EdgeInsets.all(7),
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: message.messageType == MessageType.reciever
                ? Colors.deepPurple[100]
                : Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text(message.messageContent),
        ));
  }
}
