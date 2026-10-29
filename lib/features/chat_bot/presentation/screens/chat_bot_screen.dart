import 'package:flutter/material.dart';
import 'package:skillmatch/core/design_system/colors/app_colors.dart';
import 'package:skillmatch/features/chat_bot/domain/entities/chat_message.dart';
import 'package:skillmatch/features/chat_bot/presentation/widgets/chat_bot_app_bar.dart';
import 'package:skillmatch/features/chat_bot/presentation/widgets/chat_bot_welcome_panel.dart';
import 'package:skillmatch/features/chat_bot/presentation/widgets/chat_composer.dart';
import 'package:skillmatch/features/chat_bot/presentation/widgets/chat_conversation_list.dart';

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
            text: _buildSampleReply(message),
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

  String _buildSampleReply(String message) {
    final query = message.toLowerCase();
    if (query.contains('cv') || query.contains('resume')) {
      return 'A strong CV starts with a clear summary, measurable achievements, and skills tailored to the role. Share the job title you are targeting and I can suggest sections to improve.';
    }
    if (query.contains('interview')) {
      return 'Let’s prepare together. Start by reviewing the role requirements, then practice explaining one project: the challenge, your approach, and the result.';
    }
    if (query.contains('job') || query.contains('career')) {
      return 'A good next step is to match your strongest skills with the role requirements, then focus on one or two gaps. Which role or skill would you like to explore first?';
    }
    return 'Thanks for sharing. I can help you explore career options, prepare for interviews, improve your CV, or plan the skills to learn next. What would you like to focus on?';
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
