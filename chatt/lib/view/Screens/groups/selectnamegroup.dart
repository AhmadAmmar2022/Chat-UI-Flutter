import 'package:chatt/model/ChatModel.dart';
import 'package:chatt/view/Screens/groups/groups.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class namegrpup extends StatefulWidget {
    final  List<ChatModel> ? numderperson;

  const namegrpup({super.key, this.numderperson});

  @override
  State<namegrpup> createState() => _namegrpupState();
}

class _namegrpupState extends State<namegrpup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('اضف اسم للمجموعة'),
      ),
      floatingActionButton: FloatingActionButton(
            backgroundColor: Color.fromARGB(255, 131, 170, 255),
            onPressed: () {
              // Get.to(groups(numderperson:numderperson));
            },
            child: Icon(Icons.arrow_forward)),
      body: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(10),
             height: 90,
            width: Get.width,
            decoration:BoxDecoration(
                     color: Color.fromARGB(255, 169, 182, 189),
                      border: Border.all(width: 2), 
    borderRadius: BorderRadius.all(Radius.circular(10)),
            ) ,
            
            
            child: Row(children: [
         
            ],))],
      ),);
  }
}