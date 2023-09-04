// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:chatt/model/ChatModel.dart';

class groups extends StatefulWidget {
  final  List<ChatModel> ? numderperson;
   
   
  const groups({
    Key? key,
     this.numderperson,
  }) : super(key: key);

  @override
  State<groups> createState() => _groupsState();
}

class _groupsState extends State<groups> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${widget.numderperson?.length}"),),
      body:Center(child: Text(""),));
}}