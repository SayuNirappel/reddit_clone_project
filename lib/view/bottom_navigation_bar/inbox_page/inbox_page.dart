import 'package:flutter/material.dart';
import 'package:reddit_clone_project/view/bottom_navigation_bar/inbox_page/tab1_notifications.dart';
import 'package:reddit_clone_project/view/bottom_navigation_bar/inbox_page/tab2_messages.dart';

void main() {}

class InboxPage extends StatelessWidget {
  const InboxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Inbox"),
            bottom: TabBar(
              tabAlignment: TabAlignment.center,
              tabs: [
                Tab(
                  text: "Notiifcations",
                ),
                Tab(
                  text: "Messages",
                ),
              ],
            ),
          ),
          body: TabBarView(children: [Tab1Notifications(), Tab2Messages()]),
        ));
  }
}
