import 'dart:async';
import 'dart:math';

import 'package:provider/provider.dart';

import '../controllers/conversation_controller.dart';
import '../data/fun_facts_data.dart';
import '../models/message_model.dart';

giveFunFact(context) {
  var chat = Provider.of<ConversationController>(context, listen: false);
  if (funFacts.isEmpty) {
    Timer(const Duration(seconds: 1), () {
      chat.addMessage(
        Message(
            messageContent:
                "Şu an aklıma daha fazla bilgi gelmiyor. Başka bir şey yapalım!",
            messageType: MessageType.reciever),
      );
    });
    Timer(const Duration(seconds: 2), () {
      chat.addAllButtons(
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
    chat.addMessage(
      Message(messageContent: "Hmmm...", messageType: MessageType.reciever),
    );
  });

  Timer(const Duration(seconds: 2), () {
    chat.addMessage(
      Message(messageContent: randomFact, messageType: MessageType.reciever),
    );
  });
  Timer(const Duration(seconds: 3), () {
    chat.addMessage(
      Message(
          messageContent: "Bir tane daha ister misin?",
          messageType: MessageType.reciever),
    );
    chat.addAllButtons(
      ['Olur, isterim.', 'Hayır, istemiyorum.'],
    );
  });
}
