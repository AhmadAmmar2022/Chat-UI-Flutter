
import 'package:chatt/model/ChatModel.dart';
import 'package:flutter/material.dart';

import '../customwidget/ButtonCard.dart';
import 'Homescreen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key ?key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
      late ChatModel sourceChat;
  List<ChatModel> chatmodels = [
    ChatModel(
      name: "Ahmad",
      isGroup: false,
      currentMessage: "Hi Everyone",
      time: "4:00",
      icon: "person.svg",
      id: 1,
    ),
    ChatModel(
      name: "Ali",
      isGroup: false,
      currentMessage: "Hi Ahmad",
      time: "13:00",
      icon: "person.svg",
      id: 2,
    ),

    ChatModel(
      name: "samer",
      isGroup: false,
      currentMessage: "Hi Ahmad",
      time: "8:00",
      icon: "person.svg",
      id: 3,
    ),

    ChatModel(
      name: "leen",
      isGroup: false,
      currentMessage: " hi Ahmad",
      time: "2:00",
      icon: "person.svg",
      id: 4,
    ),

    // ChatModel(
    //   name: "NodeJs Group",
    //   isGroup: true,
    //   currentMessage: "New NodejS Post",
    //   time: "2:00",
    //   icon: "group.svg",
    // ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: chatmodels.length,
          itemBuilder: (contex, index) => InkWell(
                onTap: () {
                

              sourceChat = chatmodels.removeAt(index);
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => Homescreen(
                               chatmodels: chatmodels,
                                sourchat: sourceChat,
                          
                              )));
                },
                child:  ButtonCard(
                  name: chatmodels[index].name,
                  icon: Icons.person,
                ),
                  
                ),
              ));
  
  }
}
