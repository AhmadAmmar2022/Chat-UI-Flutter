import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:web_socket_channel/io.dart';

class socket extends StatefulWidget {
  const socket({super.key});

  @override
  State<socket> createState() => _socketState();
}

class _socketState extends State<socket> {
  String btcUsdtPrice = "0";
  final channel = IOWebSocketChannel.connect(
      'wss://demo.piesocket.com/v3/channel_123?api_key=VCXCEuvhGcBDP7XhiJJUDvR1e1D3eiVjgZ9VRiaV&notify_self');

        @override
  void initState() {
    super.initState();
    streamListener();
  }
        streamListener() {
    channel.stream.listen((message) {
      // channel.sink.add('received!');
      // channel.sink.close(status.goingAway);
      Map getData = jsonDecode(message);
      setState(() {
        btcUsdtPrice = getData['p'];
      });
      print(getData['p']);
    });
  }

      
      
      
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(child:Column(
            mainAxisAlignment:MainAxisAlignment.center,
          children: 
        [
       
          Text("the price"),
          Text(btcUsdtPrice,style: TextStyle(fontSize: 30),)
          
        ],)),
      ),
    );
  }
}