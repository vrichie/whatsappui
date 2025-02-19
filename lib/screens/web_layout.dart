import 'package:flutter/material.dart';
import 'package:whatsappui/colors.dart';
import 'package:whatsappui/widgets/contacts_list.dart';
import 'package:whatsappui/widgets/web_profile_bar.dart';
import 'package:whatsappui/widgets/web_search_bar.dart';

class WebLayout extends StatelessWidget {
  const WebLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Column(
              children: [
                WebProfileBar(),
                WebSearchBar(),
                ContactsList(),
              ],
            ),
          ),
          Container(
              width: MediaQuery.of(context).size.width * 0.75,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/backgroundImage.png'),
                    fit: BoxFit.cover),
              ),
              child: Column(
                children: [],
              )),
        ],
      ),
    );
  }
}
