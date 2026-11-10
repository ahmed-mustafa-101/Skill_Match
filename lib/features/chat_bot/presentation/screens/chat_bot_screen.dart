import 'package:flutter/material.dart';
import 'package:skillmatch/core/extensions/build_context_localization.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/features/chat_bot/domain/entities/chat_message.dart';
import 'package:skillmatch/features/chat_bot/presentation/widgets/chat_bot_app_bar.dart';
import 'package:skillmatch/features/chat_bot/presentation/widgets/chat_bot_welcome_panel.dart';
import 'package:skillmatch/features/chat_bot/presentation/widgets/chat_composer.dart';
import 'package:skillmatch/features/chat_bot/presentation/widgets/chat_conversation_list.dart';
import 'package:skillmatch/generated/l10n.dart';

class ChatBotScreen extends StatefulWidget {
  const ChatBotScreen({super.key});

  @override
  State<ChatBotScreen> createState() => _ChatBotScreenState();
}

class _ChatBotScreenState extends State<ChatBotScreen> {
  final _messageController = TextEditingController();
  final _scrollController = ScrollController();
  final List<ChatMessage> _messages = [];
  int _conversationId = 0;

  @override
  void dispose() {
    _messageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: ChatBotAppBar(onNewChat: _startNewChat),
      body: Column(
        children: [
          Expanded(
            child: _messages.isEmpty
                ? ChatBotWelcomePanel(onPromptSelected: _sendMessage)
                : ChatConversationList(
                    controller: _scrollController,
                    messages: _messages,
                  ),
          ),
          ChatComposer(
            controller: _messageController,
            onSend: () => _sendMessage(_messageController.text),
            onChanged: (_) => setState(() {}),
            enabled: _messageController.text.trim().isNotEmpty,
          ),
        ],
      ),
    );
  }

  void _sendMessage(String text) {
    final message = text.trim();
    if (message.isEmpty) return;

    setState(() {
      _messages.add(
        ChatMessage(
          text: message,
          sender: ChatMessageSender.user,
          sentAt: DateTime.now(),
        ),
      );
      _messageController.clear();
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeOut,
        );
      }
    });

    final conversationId = _conversationId;
    Future<void>.delayed(const Duration(milliseconds: 450), () {
      if (!mounted || conversationId != _conversationId) return;
      setState(() {
        _messages.add(
          ChatMessage(
            text: _buildSampleReply(message, context.l10n),
            sender: ChatMessageSender.assistant,
            sentAt: DateTime.now(),
          ),
        );
      });
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (_scrollController.hasClients) {
          _scrollController.animateTo(
            _scrollController.position.maxScrollExtent,
            duration: const Duration(milliseconds: 250),
            curve: Curves.easeOut,
          );
        }
      });
    });
  }

  String _buildSampleReply(String message, S l10n) {
    final query = message.toLowerCase();
    if (query.contains('cv') ||
        query.contains('resume') ||
        query.contains('السيرة الذاتية')) {
      return l10n.chatBotCvReply;
    }
    if (query.contains('interview') || query.contains('مقابلة')) {
      return l10n.chatBotInterviewReply;
    }
    if (query.contains('job') ||
        query.contains('career') ||
        query.contains('وظيفة') ||
        query.contains('مسار')) {
      return l10n.chatBotCareerReply;
    }
    return l10n.chatBotDefaultReply;
  }

  void _startNewChat() {
    FocusManager.instance.primaryFocus?.unfocus();
    setState(() {
      _conversationId++;
      _messages.clear();
    });
    _messageController.clear();
    if (_scrollController.hasClients) {
      _scrollController.jumpTo(0);
    }
  }
}
