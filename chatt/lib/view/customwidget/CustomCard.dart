import 'package:chatt/model/ChatModel.dart';
import 'package:flutter/material.dart';


import '../Screens/IndividualPage.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({ Key? key,  required this.chatModel, required this.sourchat}) : super(key: key);
   final ChatModel chatModel;
  final ChatModel sourchat;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (contex) => individualPage(
                      chatModel: chatModel,
                      sourchat: sourchat,
                    )));
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 23,
              child:Icon(Icons.person),
              backgroundColor: Color.fromARGB(255, 105, 190, 247),
            ),
            title: Text(
              chatModel.name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Row(
              children: [
                Icon(Icons.done_all),
                SizedBox(
                  width: 3,
                ),
                Text(
                  chatModel.currentMessage,
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            trailing: Text(chatModel.time),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 80),
            child: Divider(
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}
