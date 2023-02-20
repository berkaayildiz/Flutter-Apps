import 'package:provider/provider.dart';

import '../controllers/conversation_controller.dart';
import '../models/message_model.dart';

greetingUser(context) {
  var chat = Provider.of<ConversationController>(context, listen: false);
  chat.addMessage(
    Message(
        messageContent:
            "Seni tekrar gördüğüme sevindim! \nBugün ne yapmak istersin?",
        messageType: MessageType.reciever),
  );
  chat.addAllButtons(
    [
      'Oyun oynamak istiyorum.',
      'Bir şeyler öğrenmek istiyorum.',
      'Şu an bir şey yapmak istemiyorum.'
    ],
  );
}
