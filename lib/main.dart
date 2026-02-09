import 'package:flutter/material.dart';
import 'package:private_chats/data/notifiers.dart';
import 'package:private_chats/widget_tree.dart';

void main() {
  runApp(PrivateChats());
}

class PrivateChats extends StatelessWidget {
  const PrivateChats({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isLightModeNotifier,
      builder: (context, isLightMode, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 255, 0, 0),
              brightness: isLightMode ? Brightness.light : Brightness.dark,
            ),
          ),
          title: 'PrivateChats',
          home: WidgetTree(),
        );
      },
    );
  }
}
