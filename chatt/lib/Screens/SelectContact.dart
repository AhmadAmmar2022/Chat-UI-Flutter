import 'package:chatt/customwidget/ButtonCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../customwidget/ContactCard.dart';
import '../customwidget/CustomCard.dart';
import '../model/ChatModel.dart';
import 'CreateGroup.dart';

class SelectContact extends StatefulWidget {
  const SelectContact({super.key});

  @override
  State<SelectContact> createState() => _SelectContactState();
}

class _SelectContactState extends State<SelectContact> {
  List<ChatModel> contacts = [
    ChatModel(
        name: "Ahmad",
         select: false,
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
        select: false,
        id: 1,
        status: "ususu  "),
    ChatModel(
        name: "samer",
        icon: "groups.svg",
        select: false,
        isGroup: true,
        time: "4.9",
        currentMessage: "hello frontier",
        id: 1,
        status: "A  stack "),
    ChatModel(
        name: "Ali",
        select: false,
        icon: "person.svg",
        isGroup: false,
        time: "4.9",
        currentMessage: "hello frontier",
        id: 1,
        status: "A   "),
    ChatModel(
        name: "samer",
        select: false,
        icon: "groups.svg",
        isGroup: true,
        time: "4.9",
        currentMessage: "hello frontier",
        id: 1,
        status: "A full stack developer"),
    ChatModel(
        name: "roodi",
        select: false,
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
                "اختر جهة اتصال",
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
            PopupMenuButton<String>(
              padding: EdgeInsets.all(0),
              onSelected: (value) {
                print(value);
              },
              itemBuilder: (BuildContext contesxt) {
                return [
                  PopupMenuItem(
                    child: Text("دعوة صديق"),
                    value: "Invite a friend",
                  ),
                  PopupMenuItem(
                    child: Text("تحديث"),
                    value: "Refresh",
                  ),
                  PopupMenuItem(
                    child: Text("اتصل بنا"),
                    value: "Help",
                  ),
                ];
              },
            ),
          ],
        ),
        body: ListView.builder(
            itemCount: contacts.length+1,
            itemBuilder: (context, index) {
              if (index==0){
              return InkWell(child: ButtonCard(name:"مجموعة جددية ", icon:Icons.group ,),onTap:(){
                             Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => CreateGroup()));
              } ,)
             ;}
              else {
                return 
             ContactCard(
                contact: contacts[index-1], 
              );}
              }
            ));
  }
}
