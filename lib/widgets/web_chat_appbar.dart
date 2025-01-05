import 'package:flutter/material.dart';

class WebChatAppbar extends StatelessWidget {
  const WebChatAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.077,
        width: MediaQuery.of(context).size.height * 0.75,
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
          ],
        ));
  }
}
