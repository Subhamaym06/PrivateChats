import 'package:flutter/material.dart';
import 'package:private_chats/widgets/chats.dart';
import 'package:private_chats/widgets/footer.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ChatCard(code: 44, unread: 21, lastSeen: '21:32'),
          ChatCard(code: 351, unread: 0, lastSeen: '15:17'),
          ChatCard(code: 1, unread: 25, lastSeen: '14:25'),
          ChatCard(code: 86, unread: 0, lastSeen: '14:12'),
          ChatCard(code: 54, unread: 10, lastSeen: '12:47'),
          ChatCard(code: 61, unread: 47, lastSeen: '10:18'),
          ChatCard(code: 49, unread: 0, lastSeen: '08:14'),
          ChatCard(code: 966, unread: 78, lastSeen: '08:12'),
          ChatCard(code: 35, unread: 10, lastSeen: '03:14'),
          ChatCard(code: 81, unread: 78, lastSeen: '01:25'),
          ChatCard(code: 55, unread: 0, lastSeen: '00:28'),
          ChatCard(code: 91, unread: 69, lastSeen: '00:00'),
          SizedBox(height: 20),
          FooterWidget(),
        ],
      ),
    );
  }
}
