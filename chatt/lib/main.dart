import 'package:flutter/material.dart';

import 'Screens/Homescreen.dart';
import 'Screens/LoginScreen.dart';
import 'Screens/socket.dart';
import 'Screens/socketmessage.dart';
// late SharedPreferences sharedpref;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     theme: ThemeData(
          fontFamily: "OpenSans",
          primaryColor: Colors.amber,
          accentColor : Colors.amber
          ),
  
      home: LoginScreen()
    );
  }
}

