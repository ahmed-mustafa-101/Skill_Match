enum ChatMessageSender { assistant, user }

class ChatMessage {
  const ChatMessage({
    required this.text,
    required this.sender,
    required this.sentAt,
  });

  final String text;
  final ChatMessageSender sender;
  final DateTime sentAt;
}
