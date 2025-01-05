import 'package:flutter/material.dart';
import 'package:whatsappui/colors.dart';
import 'package:whatsappui/widgets/contacts_list.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'What\'sApp',
            style: TextStyle(
                color: Colors.grey, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: false,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search, color: Colors.grey),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert, color: Colors.grey),
            ),
          ],
          bottom: const TabBar(
            indicatorColor: tabColor,
            indicatorWeight: 4,
            labelColor: tabColor,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            dividerColor: Colors.transparent,
            tabs: [
              Tab(
                text: 'Chats',
              ),
              Tab(
                text: 'Status',
              ),
              Tab(text: 'Calls'),
            ],
          ),
        ),
        body: const ContactsList(),
      ),
    );
  }
}
