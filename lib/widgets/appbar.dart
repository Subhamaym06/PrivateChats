import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:private_chats/data/notifiers.dart';
import 'package:private_chats/pages/profile_page.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SvgPicture.asset('assets/logo/logo.svg', fit: BoxFit.contain),
      ),
      title: Text(
        'PrivateChats',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
      ),
      actions: [
        IconButton(
          tooltip: 'Toggle theme',
          icon: ValueListenableBuilder(
            valueListenable: isLightModeNotifier,
            builder: (context, isLightMode, child) {
              return Icon(isLightMode ? Icons.dark_mode : Icons.light_mode);
            },
          ),
          onPressed: () {
            isLightModeNotifier.value = !isLightModeNotifier.value;
          },
        ),
        IconButton(
          tooltip: 'About the Developer',
          icon: Icon(
            Icons.person,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage(),
            )
            );
          },
        ),
      ],
      backgroundColor: const Color.fromARGB(255, 255, 0, 0),
    );
  }
}
