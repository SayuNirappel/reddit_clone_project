import 'package:flutter/material.dart';
import 'package:reddit_clone_project/view/bottom_navigation_bar/community_page/community_content_db.dart';

void main() {}

class Tab2Messages extends StatelessWidget {
  const Tab2Messages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20),
        child: ListView.builder(
            itemCount: CommunityContentDb.communityContentList2.length,
            itemBuilder: (context, index) {
              return Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      spacing: 10,
                      children: [
                        Icon(Icons.mail),
                        Text(
                          CommunityContentDb.communityContentList3[index].pName,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Text(
                      CommunityContentDb
                          .communityContentList3[index].discription,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      children: [
                        Text(CommunityContentDb
                            .communityContentList3[index].pName),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.circle,
                          size: 5,
                        ),
                        Text(" 14d")
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
