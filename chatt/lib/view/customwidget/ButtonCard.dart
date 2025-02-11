import 'package:chatt/core/constant/color.dart';
import 'package:flutter/material.dart';


class ButtonCard extends StatelessWidget {
  const ButtonCard({Key ?key, required this.name, required this.icon}) : super(key: key);
  final String name;
  final IconData icon;

  @override
  Widget build(BuildContext contesxt) {
    return ListTile(
      leading: CircleAvatar(
        radius: 23,
        child: Icon(
          icon,
          size: 26,
          color: Colors.white,
        ),
        backgroundColor: AppColor.primaryColor
      ),
      title: Text(
        name,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
