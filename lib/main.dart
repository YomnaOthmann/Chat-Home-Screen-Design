import 'package:chat_home_design/views/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ChatHomeApp());
}

class ChatHomeApp extends StatelessWidget {
  const ChatHomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Ubuntu"),
      debugShowCheckedModeBanner: false,
      home: const ChatScreen(),
    );
  }
}
