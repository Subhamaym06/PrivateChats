import 'package:flutter/material.dart';
import 'package:private_chats/widgets/footer.dart';
import 'package:private_chats/widgets/moments.dart';
import 'package:private_chats/widgets/spotlights.dart';

class UpdatesPage extends StatelessWidget {
  const UpdatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //Moments Title
          Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Moments',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 160,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
                MomentCard(title: 'My Moment', isMyMoment: true),
                MomentCard(title: 'Mr. XXX'),
                MomentCard(title: 'Miss. YYY'),
                MomentCard(title: 'Ms. ZZZ'),
                MomentCard(title: 'Mrs. XYZ'),
                MomentCard(title: 'Mr. ABC'),
              ],
            ),
          ),
          SizedBox(height: 10),
          //Spotlight Title
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              'Spotlights',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          SpotlightCard(unread: 2, lastSeen: '01/02/2026'),
          SpotlightCard(unread: 3, lastSeen: '21/01/2026'),
          SpotlightCard(unread: 0, lastSeen: '14/12/2025'),
          SpotlightCard(unread: 1, lastSeen: '22/11/2025'),
          SpotlightCard(unread: 7, lastSeen: '13/11/2025'),
          SpotlightCard(unread: 0, lastSeen: '31/10/2025'),
          SpotlightCard(unread: 9, lastSeen: '29/10/2025'),
          SizedBox(height: 20),
          FooterWidget(),
        ],
      ),
    );
  }
}
