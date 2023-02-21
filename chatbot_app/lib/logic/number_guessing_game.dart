import 'dart:async';

import 'package:provider/provider.dart';

import '../controllers/conversation_controller.dart';
import '../models/message_model.dart';

numberGuessingGame(context) {
  var chat = Provider.of<ConversationController>(context, listen: false);
  Timer(const Duration(seconds: 1), () {
    chat.addMessage(
      Message(
        messageContent:
            "Hadi aklından 1 ile 101 arasında bir sayı tut! \nOnu tahmin etmeyi deneyeceğim.",
        messageType: MessageType.reciever,
      ),
    );
  });
  Timer(const Duration(seconds: 2), () {
    chat.addMessage(
      Message(
        messageContent: "Tuttunca haber ver.",
        messageType: MessageType.reciever,
      ),
    );
    chat.addButton('Tuttum.');
  });
}

int guessNumber = 50;
int guessChange = 25;
int guessCount = 0;

guessingTheNumber(context) {
  var chat = Provider.of<ConversationController>(context, listen: false);
  if (guessChange == 2) {
    guessChange = 1;
  }
  if (guessCount == 7) {
    chat.clearAllButtons();
    Timer(const Duration(seconds: 1), () {
      chat.addMessage(
        Message(
          messageContent:
              "Hey, hile yapıyorsun! Daha fazla oynamak istemiyorum, Başka bir şey yapalım.",
          messageType: MessageType.reciever,
        ),
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
    guessNumber = 50;
    guessChange = 25;
    guessCount = 0;
    return;
  }

  switch (chat.messagesList.last.messageContent) {
    case 'Evet, bildin!':
      Timer(const Duration(seconds: 1), () {
        chat.addMessage(
          Message(
            messageContent: "Haha, aslında başından beri biliyordum!",
            messageType: MessageType.reciever,
          ),
        );
      });
      Timer(const Duration(seconds: 2), () {
        chat.addMessage(
          Message(
            messageContent: "Şimdi ne yapmak istersin?",
            messageType: MessageType.reciever,
          ),
        );
        chat.addAllButtons(
          [
            'Oyun oynamak istiyorum.',
            'Bir şeyler öğrenmek istiyorum.',
            'Şu an bir şey yapmak istemiyorum.'
          ],
        );
      });
      guessNumber = 50;
      guessChange = 25;
      guessCount = 0;
      break;
    case 'Hayır, daha yüksek.':
      guessNumber = guessNumber + guessChange;
      guessChange = (guessChange / 2).ceil();
      guessCount++;
      Timer(const Duration(seconds: 1), () {
        chat.addMessage(
          Message(
            messageContent: "Hmmm... O zaman $guessNumber!",
            messageType: MessageType.reciever,
          ),
        );
        chat.addAllButtons(
          ['Evet, bildin!', 'Hayır, daha yüksek.', 'Hayır, daha düşük.'],
        );
      });
      break;
    case 'Hayır, daha düşük.':
      guessNumber = guessNumber - guessChange;
      guessChange = (guessChange / 2).ceil();
      guessCount++;
      Timer(const Duration(seconds: 1), () {
        chat.addMessage(
          Message(
            messageContent: "Hmmm... O zaman $guessNumber!",
            messageType: MessageType.reciever,
          ),
        );
        chat.addAllButtons(
          ['Evet, bildin!', 'Hayır, daha yüksek.', 'Hayır, daha düşük.'],
        );
      });
      break;
  }
}
