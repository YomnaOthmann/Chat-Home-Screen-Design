import 'package:flutter/material.dart';

import '../../models/chat_model.dart';

class OnlineChatItem extends StatelessWidget {
  const OnlineChatItem({super.key, required this.chat, required this.index});
  final ChatModel chat;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SizedBox(
        width: 80,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff232323),
                  ),
                  child: ClipOval(
                    child: index == 0
                        ? const Icon(
                            Icons.video_call,
                            color: Colors.white,
                            size: 40,
                          )
                        : Image.asset(
                            chat.image,
                            fit: BoxFit.cover,
                          ),
                  ),
                ),
                if (index != 0)
                  Positioned(
                    right: 5,
                    bottom: 3,
                    child: CircleAvatar(
                      backgroundColor:
                          chat.isActive ? Colors.green : Colors.red,
                      radius: 7,
                    ),
                  ),
              ],
            ),
            Text(
              index == 0 ? "Create Room" : chat.name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                //fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
