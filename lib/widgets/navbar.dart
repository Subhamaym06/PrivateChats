import 'package:flutter/material.dart';
import 'package:private_chats/data/notifiers.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageNotifier,
      builder: (context, selectedPage, child) {
        return NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.chat), label: 'Chats'),
            NavigationDestination(icon: Icon(Icons.update), label: 'Updates'),
          ],
          onDestinationSelected: (index) {
            selectedPageNotifier.value = index;
          },
          selectedIndex: selectedPage,
        );
      },
    );
  }
}
