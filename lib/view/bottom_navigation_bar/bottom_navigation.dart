import 'package:flutter/material.dart';
import 'package:reddit_clone_project/utils/constants/image_constants.dart';
import 'package:reddit_clone_project/view/bottom_navigation_bar/chat_page/chat_page.dart';
import 'package:reddit_clone_project/view/bottom_navigation_bar/community_page/community_page.dart';
import 'package:reddit_clone_project/view/bottom_navigation_bar/create_page/create_page.dart';
import 'package:reddit_clone_project/view/bottom_navigation_bar/home_page/home_page.dart';
import 'package:reddit_clone_project/view/bottom_navigation_bar/inbox_page/inbox_page.dart';

void main() {}

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedIndex = 0;
  List screens = [
    HomePage(),
    CommunityPage(),
    CreatePage(),
    ChatPage(),
    InboxPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          onTap: (value) {
            selectedIndex = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined, color: Colors.black),
                label: "Home",
                activeIcon: Icon(Icons.home, color: Colors.black)),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.groups_2_outlined,
                  color: Colors.black,
                ),
                label: "Communities",
                activeIcon: Icon(
                  Icons.groups_2,
                  color: Colors.black,
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.add, color: Colors.black),
                label: "Create",
                activeIcon:
                    Icon(Icons.add_circle_rounded, color: Colors.black)),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat_outlined,
                  color: Colors.black,
                ),
                label: "Chat",
                activeIcon: Icon(
                  Icons.chat_rounded,
                  color: Colors.black,
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications_none,
                  color: Colors.black,
                ),
                label: "Inbox",
                activeIcon: Icon(
                  Icons.notifications,
                  color: Colors.black,
                ))
          ]),
    );
  }
}
