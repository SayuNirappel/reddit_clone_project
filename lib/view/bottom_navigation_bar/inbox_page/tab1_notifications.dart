import 'package:flutter/material.dart';
import 'package:reddit_clone_project/utils/constants/color_constants.dart';
import 'package:reddit_clone_project/view/bottom_navigation_bar/community_page/community_content_db.dart';

void main() {}

class Tab1Notifications extends StatelessWidget {
  const Tab1Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
            itemCount: CommunityContentDb.communityContentList2.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                color: Colors.lightBlueAccent.shade100,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 12),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(CommunityContentDb
                                .communityContentList2[index].proPic),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      CommunityContentDb
                                          .communityContentList3[index].pName,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.circle,
                                      size: 5,
                                    ),
                                    Text(" 14m")
                                  ],
                                ),
                                Text(
                                  CommunityContentDb
                                      .communityContentList1[index].discription,
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.justify,
                                  maxLines: 2,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
