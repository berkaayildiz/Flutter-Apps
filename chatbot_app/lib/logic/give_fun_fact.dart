import 'dart:async';
import 'dart:math';

import 'package:chatbot_app/pages/home_page.dart';

import '../data/answer_button_data.dart';
import '../data/chat_data.dart';
import '../models/message_model.dart';
import '/data/fun_fact_data.dart';

giveFunFact() {
  Random random = Random();
  int randomFactIndex = random.nextInt(funFacts.length);
  String randomFact = funFacts[randomFactIndex];

  Timer(const Duration(seconds: 1), () {
    messages.add(
      Message(messageContent: "Hmmm...", messageType: MessageType.reciever),
    );
  });

  Timer(const Duration(seconds: 2), () {
    messages.add(
      Message(messageContent: randomFact, messageType: MessageType.reciever),
    );
  });
  Timer(const Duration(seconds: 3), () {
    messages.add(
      Message(
          messageContent: "Bir tane daha ister misin?",
          messageType: MessageType.reciever),
    );
    answers.addAll(
      ['Olur, isterim.', 'Hayır, istemiyorum.'],
    );
  });
}
