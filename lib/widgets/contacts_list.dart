import 'package:flutter/material.dart';
import 'package:whatsappui/info.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: info.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                        title: Text(
                          info[index]['name'].toString(),
                          style: const TextStyle(fontSize: 18),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            info[index]['message'].toString(),
                            style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w200,
                                color: Colors.grey),
                          ),
                        ),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              info[index]['profilePic'].toString()),
                          radius: 25,
                        ),
                        trailing: Text(
                          info[index]['time'].toString(),
                          style:
                              const TextStyle(fontSize: 13, color: Colors.grey),
                        )),
                  ),
                ),
                const Divider(
                  thickness: 0.5,
                  color: Colors.grey,
                  indent: 35,
                ),
              ],
            );
          }),
    );
  }
}
