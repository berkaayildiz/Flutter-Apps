import 'dart:async';

import 'package:provider/provider.dart';

import '../controllers/conversation_controller.dart';
import '../logic/number_guessing_game.dart';
import '../logic/give_fun_fact.dart';
import '../logic/greeting_user.dart';
import '../models/message_model.dart';

botAnswer(context) {
  var chat = Provider.of<ConversationController>(context, listen: false);
  guessingTheNumber(context);
  switch (chat.messagesList.last.messageContent) {
    case 'Oyun oynamak istiyorum.':
      numberGuessingGame(context);
      break;
    case 'Bir şeyler öğrenmek istiyorum.':
      giveFunFact(context);
      break;
    case 'Şu an bir şey yapmak istemiyorum.':
      Timer(const Duration(seconds: 1), () {
        chat.addMessage(
          Message(
              messageContent:
                  "Garip... Sanki uygulamayı ben çalıştırdım.\nNeyse, bir şey yapmak istersen tekrar yazabilirsin.",
              messageType: MessageType.reciever),
        );
      });
      Timer(const Duration(seconds: 2), () {
        chat.addMessage(
          Message(
              messageContent: "Görüşürüz!", messageType: MessageType.reciever),
        );
        chat.addButton('Merhaba, geri geldim!');
      });
      break;

    // TODO: 'Merhaba, geri geldim!' butonuna basınca bot onu geri karşılamıyor.

    case 'Merhaba, geri geldim!':
      Timer(const Duration(seconds: 1), () {
        greetingUser(context);
      });
      break;
    case 'Olur, isterim.':
      giveFunFact(context);
      break;
    case 'Hayır, istemiyorum.':
      Timer(const Duration(seconds: 1), () {
        chat.addMessage(
          Message(
              messageContent: 'Tamam, ne yapmak istersin?',
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
      break;
    case 'Tuttum.':
      Timer(const Duration(seconds: 1), () {
        chat.addMessage(
          Message(
              messageContent: 'Tuttuğun sayı 50 mi?',
              messageType: MessageType.reciever),
        );
      });
      Timer(const Duration(seconds: 1), () {
        chat.addAllButtons(
          ['Evet, bildin!', 'Hayır, daha yüksek.', 'Hayır, daha düşük.'],
        );
      });
      break;
  }
}
