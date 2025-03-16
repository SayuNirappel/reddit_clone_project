import 'package:flutter/material.dart';
import 'package:reddit_clone_project/view/bottom_navigation_bar/chat_page/chat_page.dart';
import 'package:reddit_clone_project/view/bottom_navigation_bar/community_page/community_page.dart';
import 'package:reddit_clone_project/view/bottom_navigation_bar/create_page/create_page.dart';
import 'package:reddit_clone_project/view/bottom_navigation_bar/home_page/home_page.dart';
import 'package:reddit_clone_project/view/bottom_navigation_bar/inbox_page/inbox_page.dart';
import 'package:reddit_clone_project/view/login_page/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:
            //InboxPage()
            //ChatPage()
            //CreatePage()
            //CommunityPage()
            HomePage()
        //LoginPage(),
        );
  }
}
