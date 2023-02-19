import 'dart:async';
import 'dart:math';

import '../data/answer_button_data.dart';
import '../data/chat_data.dart';
import '../data/fun_fact_data.dart';

import '../models/message_model.dart';

giveFunFact() {
  if (funFacts.isEmpty) {
    Timer(const Duration(seconds: 1), () {
      messages.add(
        Message(
            messageContent:
                "Şu an aklıma daha fazla bilgi gelmiyor. Başka bir şey yapalım!",
            messageType: MessageType.reciever),
      );
    });
    Timer(const Duration(seconds: 2), () {
      answers.addAll(
        [
          'Oyun oynamak istiyorum.',
          'Bir şeyler öğrenmek istiyorum.',
          'Şu an bir şey yapmak istemiyorum.'
        ],
      );
    });
    return;
  }

  Random random = Random();
  int randomFactIndex = random.nextInt(funFacts.length);
  String randomFact = funFacts[randomFactIndex];
  funFacts.remove(randomFact);
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
