import 'package:flutter/material.dart';

class ChatCard extends StatelessWidget {
  final int code;
  final int unread;
  final String lastSeen;

  const ChatCard({
    super.key,
    required this.code,
    required this.unread,
    required this.lastSeen,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: InkWell(
        child: ListTile(
          leading: const CircleAvatar(
            child: Icon(Icons.face_retouching_off_rounded),
          ),
          title: Text('+$code XXXXX-XXXXX'),
          subtitle: Text(
            'Encrypted harder than your Wi-Fi password.',
            style: TextStyle(color: Colors.red),
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (unread > 0)
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: const BoxDecoration(  
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    '$unread',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
              Text(lastSeen, style: const TextStyle(fontSize: 12)),
            ],
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text('Nice Try!😏'),
                  content: Text(
                    'These are my Private Chats;\nPrivate Chats, Private Chats;\nThese are my Private Chats;\nNobody should open them,\nNobody should see them,\nNobody should read them.',
                  ),
                  actions: [
                    FilledButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Alright alright 😅'),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
