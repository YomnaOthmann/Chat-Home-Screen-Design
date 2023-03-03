import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        toolbarHeight: 90,
        leading: const CircleAvatar(
          backgroundImage: AssetImage(
            "assets/images/palm.jpg",
          ),
          backgroundColor: Colors.transparent,
          radius: 25,
        ),
        title: const Text(
          "Chats",
          style: TextStyle(
              fontSize: 32, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const CircleAvatar(
              backgroundColor: Color(0xff232323),
              radius: 70,
              child: Icon(
                Icons.camera_alt,
                color: Colors.white,
                size: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
