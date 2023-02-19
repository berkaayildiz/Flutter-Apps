import '../data/answer_button_data.dart';
import '../data/chat_data.dart';

import '../models/message_model.dart';

greetingUser() {
  messages.add(
    Message(
        messageContent:
            "Seni tekrar gördüğüme sevindim! \nBugün ne yapmak istersin?",
        messageType: MessageType.reciever),
  );
  answers.addAll(
    [
      'Oyun oynamak istiyorum.',
      'Bir şeyler öğrenmek istiyorum.',
      'Şu an bir şey yapmak istemiyorum.'
    ],
  );
}
