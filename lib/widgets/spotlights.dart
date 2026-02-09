import 'package:flutter/material.dart';

class SpotlightCard extends StatelessWidget {
  final int unread;
  final String lastSeen;
  const SpotlightCard({
    super.key,
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
            child: Icon(Icons.stars),
          ),
          title: Text("Face famous. Name private."),
          subtitle: Text(
            "Celebrities, not your group chat.",
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
                  title: Text('Unauthorized Curiosity'),
                  content: Text(
                    "Nothing to leak. Move along.🤕\nYou Know them, that's enough.😌",
                  ),
                  actions: [
                    FilledButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Okay okay 😒'),
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
