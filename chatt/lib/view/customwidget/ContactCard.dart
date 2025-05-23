// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:chatt/model/ChatModel.dart';
import 'package:flutter/material.dart';




class ContactCard extends StatelessWidget {
  const ContactCard({Key ?key,required this.contact}) : super(key: key);
  final ChatModel contact;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 50,
        height: 53,
        child: Stack(
          children: [
            CircleAvatar(
              radius: 23,
              child: Icon(Icons.person),
              backgroundColor:  Color.fromARGB(255, 99, 158, 247),
            ),
            contact.select
                ? Positioned(
                    bottom: 4,
                    right: 5,
                    child: CircleAvatar(
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                      radius: 11,
                      child: Icon(
                        Icons.check,
                        color: Color.fromARGB(255, 0, 15, 65),
                        size: 18,
                      ),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
      title: Text(
        contact.name,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        contact.status,
        style: TextStyle(
          fontSize: 13,
        ),
      ),
    );
  }
}
