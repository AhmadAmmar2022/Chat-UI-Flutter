import 'package:chatt/customwidget/ButtomCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../customwidget/ContactCard.dart';
import '../model/ChatModel.dart';

class CreateGroup extends StatefulWidget {
  const CreateGroup({super.key});

  @override
  State<CreateGroup> createState() => _CreateGroupState();
}

class _CreateGroupState extends State<CreateGroup> {
  List<ChatModel> contacts = [
    ChatModel(
        name: "Ahmad",
        icon: "groups.svg",
        isGroup: false,
        time: "4.9",
        currentMessage: "hello frontier",
        id: 1,
        status: "A full stack developer"),
    ChatModel(
        name: "mohmmad",
        icon: "person.svg",
        isGroup: false,
        time: "4.9",
        currentMessage: "hello frontier",
        id: 1,
        status: "ususu  "),
    ChatModel(
        name: "samer",
        icon: "groups.svg",
        isGroup: true,
        time: "4.9",
        currentMessage: "hello frontier",
        id: 1,
        status: "A  stack "),
    ChatModel(
        name: "Ali",
        icon: "person.svg",
        isGroup: false,
        time: "4.9",
        currentMessage: "hello frontier",
        id: 1,
        status: "A   "),
    ChatModel(
        name: "samer",
        icon: "groups.svg",
        isGroup: true,
        time: "4.9",
        currentMessage: "hello frontier",
        id: 1,
        status: "A full stack developer"),
    ChatModel(
        name: "roodi",
        icon: "person.svg",
        isGroup: false,
        time: "4.9",
        currentMessage: "hello frontier",
        id: 1,
        status: "A full  developer"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "اضافة اعضاء الى المجموعة  ",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "${contacts.length}",
                style: TextStyle(
                  fontSize: 20,
                ),
              )
            ],
          ),
          actions: [
            IconButton(
                icon: Icon(
                  Icons.search,
                  size: 26,
                ),
                onPressed: () {}),
         
          ],
        ),
        body: ListView.builder(
            itemCount: contacts.length ,
            itemBuilder: (context, index) {
      
                return ContactCard(
                  contact: contacts[index],
                );
              
            }));
  }
}
