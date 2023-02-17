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
            "Hadi aklından 1 ile 101 arasında bir sayı tut! \nOnu tahmin etmeyi deneyeceğim.",
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

int guessNumber = 50;
int guessChange = 25;

List guessedNumbers = [50];

guessingTheNumber() {
  guessNumber = guessNumber + guessChange;

  if (guessedNumbers.contains(guessNumber)) {
    // User aklından 74 tutarsa bug oluyor ve çözmeye üşendim.
    // O yüzden böyle çözdüm.
    if (guessNumber == 75) {
      Timer(const Duration(seconds: 1), () {
        messages.add(
          Message(
            messageContent: "Tuttuğun sayı kesinlikle 74!",
            messageType: MessageType.reciever,
          ),
        );
      });
      Timer(const Duration(seconds: 1), () {
        messages.add(
          Message(
            messageContent: "Şimdi ne yapmak istersin?",
            messageType: MessageType.reciever,
          ),
        );
      });
    } else {
      Timer(const Duration(seconds: 1), () {
        messages.add(
          Message(
            messageContent:
                "Hey, hile yapıyorsun! Daha fazla oynamak istemiyorum, Başka bir şey yapalım.",
            messageType: MessageType.reciever,
          ),
        );
      });
    }
    Timer(const Duration(seconds: 2), () {
      answers.addAll(
        [
          'Oyun oynamak istiyorum.',
          'Bir şeyler öğrenmek istiyorum.',
          'Şu an bir şey yapmak istemiyorum.'
        ],
      );
    });
    guessNumber = 50;
    guessChange = 25;
    guessedNumbers.clear();
    return;
  }
  guessNumber = guessNumber - guessChange;

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
      guessNumber = 50;
      guessChange = 25;
      guessedNumbers.clear();
      break;
    case 'Hayır, daha yüksek.':
      guessNumber = guessNumber + guessChange;
      guessedNumbers.add(guessNumber);
      guessChange = (guessChange / 2).ceil();
      Timer(const Duration(seconds: 1), () {
        messages.add(
          Message(
            messageContent: "Hmmm... O zaman $guessNumber!",
            messageType: MessageType.reciever,
          ),
        );
      });
      answers.addAll(
        ['Evet, bildin!', 'Hayır, daha yüksek.', 'Hayır, daha düşük.'],
      );
      break;
    case 'Hayır, daha düşük.':
      guessNumber = guessNumber - guessChange;
      guessedNumbers.add(guessNumber);
      guessChange = (guessChange / 2).ceil();
      Timer(const Duration(seconds: 1), () {
        messages.add(
          Message(
            messageContent: "Hmmm... O zaman $guessNumber!",
            messageType: MessageType.reciever,
          ),
        );
      });
      answers.addAll(
        ['Evet, bildin!', 'Hayır, daha yüksek.', 'Hayır, daha düşük.'],
      );
      break;
  }
}
