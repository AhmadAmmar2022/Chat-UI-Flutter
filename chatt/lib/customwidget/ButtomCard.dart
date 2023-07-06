import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtomCard extends StatelessWidget {
  const ButtomCard({
    Key? key,

  }) : super(key: key);
 

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 23,
        child: 
          Icon(Icons.group_add,
          size: 26,
          color: Colors.white,
        ),
        backgroundColor: Colors.amber,
      ),
      title: Text(
        "مجموعة جديدة",
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}