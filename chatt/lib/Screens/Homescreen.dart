import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../pages/chatpage.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

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
        backgroundColor: Color.fromARGB(255, 247, 186, 3),
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
              text: "الحالات",
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
       chatpage(),
          Text("3"),
          Text("4"),
        ],
      ),
    );
  }
  }
