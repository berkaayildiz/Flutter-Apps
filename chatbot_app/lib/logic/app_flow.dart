import 'package:chatbot_app/logic/number_guessing_game.dart';

import '../data/chat_data.dart';
import '../models/message_model.dart';

appFlow() {
  messages.add(
    Message(
        messageContent: "Seni tekrar gördüğüme sevindim! \nBugün nasılsın?",
        messageType: MessageType.reciever),
  );

  numberGuessingGame();
}
