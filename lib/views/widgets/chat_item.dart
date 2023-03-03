import 'package:flutter/material.dart';

import '../../models/chat_model.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({super.key, required this.model, required this.index});
  final ChatModel model;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage(model.image),
          radius: 30,
        ),
        const SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              model.name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              //textAlign: TextAlign.start,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                //fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  model.message ?? "",
                  //textAlign: TextAlign.start,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  model.time ?? "",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            )
          ],
        ),
        const Spacer(),
        if (model.arrived ?? false)
          const Icon(
            Icons.check_circle,
            color: Colors.grey,
            size: 15,
          )
      ],
    );
  }
}
