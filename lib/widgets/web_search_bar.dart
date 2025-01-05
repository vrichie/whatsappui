import 'package:flutter/material.dart';
import 'package:whatsappui/colors.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.06,
        width: MediaQuery.of(context).size.width * 0.25,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: divideColor),
          ),
        ),
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: searchBarColor,
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ),
            hintStyle: const TextStyle(fontSize: 14),
            hintText: 'Search or start new chat',
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ));
  }
}
