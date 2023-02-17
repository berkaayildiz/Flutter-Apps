import 'dart:async';
import 'dart:math';

import '../data/answer_button_data.dart';
import '../data/chat_data.dart';
import '../models/message_model.dart';

// TODO: Make this game more independent. It coupled with the answerButton.

numberGuessingGame() {
  Timer(const Duration(seconds: 1), () {
    messages.add(
      Message(
        messageContent:
            "Hadi aklından 1 ile 10 arasında bir sayı tut! \nOnu tahmin etmeyi deneyeceğim.",
        messageType: MessageType.reciever,
      ),
    );
  });
  Timer(const Duration(seconds: 2), () {
    messages.add(
      Message(
        messageContent: "Tuttunca haber ver.",
        messageType: MessageType.reciever,
      ),
    );
    answers.add('Tuttum.');
  });
}

guessingTheNumber() {
  Random random = Random();
  int randomNumber = random.nextInt(10) + 1;

  switch (messages.last.messageContent) {
    case 'Evet, bildin!':
      Timer(const Duration(seconds: 1), () {
        messages.add(
          Message(
            messageContent: "Haha, aslında başından beri biliyordum!",
            messageType: MessageType.reciever,
          ),
        );
      });
      Timer(const Duration(seconds: 2), () {
        messages.add(
          Message(
            messageContent: "Şimdi ne yapmak istersin?",
            messageType: MessageType.reciever,
          ),
        );
        answers.addAll(
          [
            'Oyun oynamak istiyorum.',
            'Bir şeyler öğrenmek istiyorum.',
            'Şu an bir şey yapmak istemiyorum.'
          ],
        );
      });
      break;
    case 'Hayır, bilemedin.':
      Timer(const Duration(seconds: 1), () {
        messages.add(
          Message(
            messageContent: "Hmmm... O zaman $randomNumber!",
            messageType: MessageType.reciever,
          ),
        );
      });
      answers.addAll(
        ['Evet, bildin!', 'Hayır, bilemedin.', 'Zaten o sayıyı söylemiştin.'],
      );
      break;
    case 'Zaten o sayıyı söylemiştin.':
      Timer(const Duration(seconds: 1), () {
        messages.add(
          Message(
            messageContent:
                "Pardon, kusura bakma henüz o kadar zeki değilim :(",
            messageType: MessageType.reciever,
          ),
        );
        messages.add(
          Message(
            messageContent: "O zaman $randomNumber olabilir mi?",
            messageType: MessageType.reciever,
          ),
        );
      });
      answers.addAll(
        ['Evet, bildin!', 'Hayır, bilemedin.', 'Zaten o sayıyı söylemiştin.'],
      );
      break;
  }
}
