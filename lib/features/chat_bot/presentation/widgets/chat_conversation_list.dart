import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:skillmatch/features/chat_bot/domain/entities/chat_message.dart';
import 'package:skillmatch/features/chat_bot/presentation/widgets/chat_message_bubble.dart';

class ChatConversationList extends StatelessWidget {
  const ChatConversationList({
    super.key,
    required this.controller,
    required this.messages,
  });

  final ScrollController controller;
  final List<ChatMessage> messages;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: controller,
      padding: EdgeInsets.fromLTRB(16.w, 20.h, 16.w, 12.h),
      itemCount: messages.length,
      itemBuilder: (context, index) =>
          ChatMessageBubble(message: messages[index]),
    );
  }
}
