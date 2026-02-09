import 'package:flutter/material.dart';
import 'package:private_chats/data/notifiers.dart';
import 'package:private_chats/pages/chats_page.dart';
import 'package:private_chats/pages/updates_page.dart';
import 'package:private_chats/widgets/appbar.dart';
import 'package:private_chats/widgets/navbar.dart';

List<Widget> pages=[ChatsPage(),UpdatesPage()];

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});
  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
