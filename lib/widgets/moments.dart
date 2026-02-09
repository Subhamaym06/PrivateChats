import 'package:flutter/material.dart';

class MomentCard extends StatelessWidget {
  final String title;
  final bool isMyMoment;

  const MomentCard({
    super.key,
    required this.title,
    this.isMyMoment = false,
  });

  void _showMomentDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Private Moments🫣'),
        content: Text('Mind your own business😒'),
        actions: [
          FilledButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Fair Enough 😮‍💨'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final gradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: isMyMoment
          ? [Colors.red.shade400, Colors.red.shade800]
          : [Colors.blueGrey.shade400, Colors.blueGrey.shade800],
    );

    return Container(
      width: 120,
      margin: const EdgeInsets.only(right: 8), // ✅ gap between cards
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(18),
          onTap: () => _showMomentDialog(context),
          child: Ink(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              gradient: gradient,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: const CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.lock, color: Colors.black),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}