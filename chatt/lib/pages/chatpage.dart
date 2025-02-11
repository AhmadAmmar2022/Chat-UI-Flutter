import 'package:chatt/model/ChatModel.dart';
import 'package:chatt/view/Screens/SelectContact.dart';
import 'package:chatt/view/customwidget/CustomCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';



class chatpage extends StatefulWidget {
   final List<ChatModel> chatmodels;
  final ChatModel sourchat;
  
  const chatpage({super.key, required this.chatmodels, required this.sourchat, });

  @override
  State<chatpage> createState() => _chatpageState();
}

class _chatpageState extends State<chatpage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 99, 158, 247),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (builder) => SelectContact()));
        },
        child: Icon(
          Icons.chat,
          color: Color.fromARGB(255, 255, 255, 255),
        ),
      ),
      body:ListView.builder(
        itemCount:widget. chatmodels.length,
        itemBuilder: (contex, index) => CustomCard(
                chatModel: widget.chatmodels[index],
                sourchat: widget.sourchat,
          
        ),
      ),
    );
  }
}