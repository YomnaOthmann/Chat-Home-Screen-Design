import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int navIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      unselectedFontSize: 18,
      selectedFontSize: 20,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.white,
      currentIndex: navIndex,
      onTap: (index) {
        setState(() {
          navIndex = index;
        });
      },
      items: [
        const BottomNavigationBarItem(
            icon: Icon(
              Icons.messenger,
              size: 35,
            ),
            label: "chats"),
        BottomNavigationBarItem(
          icon: Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              badges.Badge(
                position: badges.BadgePosition.topEnd(),
                showBadge: true,
                badgeStyle: const badges.BadgeStyle(
                  borderSide: BorderSide(
                    width: 0,
                  ),
                  badgeColor: Color.fromARGB(255, 12, 13, 12),
                  elevation: 0,
                  shape: badges.BadgeShape.circle,
                ),
                badgeContent: const Text(
                  "99+",
                  style: TextStyle(color: Colors.green, fontSize: 12),
                ),
                child: const Icon(
                  Icons.people,
                  size: 35,
                ),
              )
            ],
          ),
          label: "People",
        )
      ],
    );
  }
}
