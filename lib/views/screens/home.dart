import 'package:chat_home_design/views/widgets/chat_item.dart';
import 'package:chat_home_design/views/widgets/custom_appbar.dart';
import 'package:chat_home_design/views/widgets/custom_navbar.dart';
import 'package:chat_home_design/views/widgets/custom_text_field.dart';
import 'package:chat_home_design/views/widgets/online_item.dart';
import 'package:flutter/material.dart';
import 'package:chat_home_design/models/chat_model.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomNavigationBar(),
      backgroundColor: Colors.black,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: CustomAppBar(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(height: 15),
              const CustomTextField(),
              const SizedBox(height: 15),
              SizedBox(
                height: 115,
                width: double.maxFinite,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => OnlineChatItem(
                          chat: chats[index],
                          index: index,
                        ),
                    itemCount: chats.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 3)),
              ),
              const SizedBox(height: 15),
              ListView.separated(
                itemCount: chats.length,
                itemBuilder: (context, index) => ChatItem(
                  model: chats[index],
                  index: index,
                ),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
