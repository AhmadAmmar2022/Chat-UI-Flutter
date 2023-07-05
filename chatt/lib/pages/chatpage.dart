import 'package:chatt/model/ChatModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../customwidget/CustomCard.dart';

class chatpage extends StatefulWidget {
  const chatpage({super.key});

  @override
  State<chatpage> createState() => _chatpageState();
}

class _chatpageState extends State<chatpage> {
  List <ChatModel> chats =[
    ChatModel(name: "Ahmad", icon: "groups.svg", isGroup: false, time: "4.9", currentMessage: "hello frontier",  id: 1),
        ChatModel(name: "mohmmad", icon: "person.svg", isGroup: false, time: "4.9", currentMessage: "hello frontier",  id: 1),
            ChatModel(name: "samer", icon: "groups.svg", isGroup: true, time: "4.9", currentMessage: "hello frontier",  id: 1),
                ChatModel(name: "Ali", icon: "person.svg", isGroup: false, time: "4.9", currentMessage: "hello frontier",  id: 1),
                    ChatModel(name: "samer", icon: "groups.svg", isGroup: true, time: "4.9", currentMessage: "hello frontier",  id: 1),
                        ChatModel(name: "roodi", icon: "person.svg", isGroup: false, time: "4.9", currentMessage: "hello frontier",  id: 1),
  ]; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.push(context,
          //     MaterialPageRoute(builder: (builder) => SelectContact()));
        },
        child: Icon(
          Icons.chat,
          color: Colors.white,
        ),
      ),
      body:ListView.builder(
        itemCount: chats.length,
        itemBuilder: (contex, index) => CustomCard(
          chatModel: chats[index],
          
        ),
      ),
    );
  }
}