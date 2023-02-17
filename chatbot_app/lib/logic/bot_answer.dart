import 'dart:async';

import 'package:chatbot_app/logic/number_guessing_game.dart';

import '../data/answer_button_data.dart';
import '../data/chat_data.dart';
import '../models/message_model.dart';
import 'give_fun_fact.dart';
import 'greeting_user.dart';

botAnswer() {
  guessingTheNumber();
  switch (messages.last.messageContent) {
    case 'Oyun oynamak istiyorum.':
      numberGuessingGame();
      break;
    case 'Bir şeyler öğrenmek istiyorum.':
      giveFunFact();
      break;
    case 'Şu an bir şey yapmak istemiyorum.':
      Timer(const Duration(seconds: 1), () {
        messages.add(
          Message(
              messageContent:
                  "Garip... Sanki uygulamayı ben çalıştırdım.\nNeyse, bir şey yapmak istersen tekrar yazabilirsin.",
              messageType: MessageType.reciever),
        );
      });
      Timer(const Duration(seconds: 2), () {
        messages.add(
          Message(
              messageContent: "Görüşürüz!", messageType: MessageType.reciever),
        );
        answers.add('Merhaba, geri geldim!');
      });
      break;
    case 'Merhaba, geri geldim!':
      Timer(const Duration(seconds: 1), () {
        greetingUser();
      });
      break;
    case 'Olur, isterim.':
      giveFunFact();
      break;
    case 'Hayır, istemiyorum.':
      Timer(const Duration(seconds: 1), () {
        messages.add(
          Message(
              messageContent: 'Tamam, ne yapmak istersin?',
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
      break;
    case 'Tuttum.':
      Timer(const Duration(seconds: 1), () {
        messages.add(
          Message(
              messageContent: 'Tuttuğun sayı 7 mi?',
              messageType: MessageType.reciever),
        );
      });
      Timer(const Duration(seconds: 1), () {
        answers.addAll(
          ['Evet, bildin!', 'Hayır, bilemedin.', 'Zaten o sayıyı söylemiştin.'],
        );
      });
      break;
  }
}
