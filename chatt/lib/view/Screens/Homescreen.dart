import 'package:chatt/core/constant/color.dart';
import 'package:chatt/model/ChatModel.dart';
import 'package:chatt/pages/chatpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';



class Homescreen extends StatefulWidget {
    final List<ChatModel> chatmodels;
  final ChatModel sourchat;
  const Homescreen({super.key, required this.chatmodels, required this.sourchat});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen>  with SingleTickerProviderStateMixin {
 late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        title: Text("Whatsapp frontier"),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          PopupMenuButton<String>(
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext contesxt) {
              return [
                PopupMenuItem(
                  child: Text("مجموعة جديدة"),
                  value: "New group",
                ),
                PopupMenuItem(
                  child: Text("محادثة جديدة "),
                  value: "Starred messages",
                ),
                PopupMenuItem(
                  child: Text("الاعدادات"),
                  value: "Settings",
                ),
              ];
            },
          )
        ],
        bottom: TabBar(
          
          controller: _controller,
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "المحادثات",
            ),
            Tab(
              text: "المجموعات",
            ),
            Tab(
              text: "المكالمات ",
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
         Text("1"),
         chatpage( chatmodels: widget.chatmodels,
            sourchat: widget.sourchat,),
          Text("3"),
          Text("4"),
        ],
      ),
    );
  }
  }
