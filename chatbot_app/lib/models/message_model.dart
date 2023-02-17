enum MessageType {
  sender,
  reciever,
}

class Message {
  String messageContent;
  Enum messageType;
  Message({required this.messageContent, required this.messageType});
}

// text @param is the context of the message.
// type @param indicates who sent the message.