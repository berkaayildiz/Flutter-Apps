import 'package:flutter/material.dart';

import '../models/message_model.dart';

// TODO: Bazen butona basınca consolda "setState() or markNeedsBuild() called during build." hatası veriyor ama uygulama çalışıyor. Çözmeye çalış.

class ConversationController extends ChangeNotifier {
  List<Message> messagesList = [];
  List<String> answersList = [];

  addMessage(Message newMessage) {
    messagesList.add(newMessage);
    notifyListeners();
  }

  addButton(String newButton) {
    answersList.add(newButton);
    notifyListeners();
  }

  addAllButtons(List<String> newButtons) {
    answersList.addAll(newButtons);
    notifyListeners();
  }

  clearAllButtons() {
    answersList.clear();
    notifyListeners();
  }
}
