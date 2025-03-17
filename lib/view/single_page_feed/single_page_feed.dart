import 'package:flutter/material.dart';
import 'package:reddit_clone_project/utils/constants/color_constants.dart';
import 'package:reddit_clone_project/view/bottom_navigation_bar/home_page/home_feed_db.dart';

void main() {}

class SinglePageFeed extends StatefulWidget {
  const SinglePageFeed({super.key});

  @override
  State<SinglePageFeed> createState() => _SinglePageFeedState();
}

class _SinglePageFeedState extends State<SinglePageFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView.builder(
            itemCount: HomeFeedDb.homeFeedList.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: ColorConstants.white,
                ),
                child: Column(
                  spacing: 20,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //post details including profile
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          spacing: 10,
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(HomeFeedDb
                                  .homeFeedList[index].feedProfilePic),
                              radius: 15,
                            ),
                            Text(
                              HomeFeedDb.homeFeedList[index].feedProfileName,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Row(
                              spacing: 3,
                              children: [
                                Text(HomeFeedDb
                                    .homeFeedList[index].feedPostTime),
                                Icon(
                                  Icons.circle,
                                  size: 5,
                                ),
                                Text(HomeFeedDb
                                    .homeFeedList[index].feedPostViews),
                                Text("Views")
                              ],
                            ),
                          ],
                        ),
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.more_vert))
                      ],
                    ),
                    Text(
                      HomeFeedDb.homeFeedList[index].feedPostTitle,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    //optional text or image
                    Container(
                        child: Column(
                      spacing: 10,
                      children: [
                        if (HomeFeedDb.homeFeedList[index].feedPostText != null)
                          Text(HomeFeedDb.homeFeedList[index].feedPostText!),
                        if (HomeFeedDb.homeFeedList[index].feedPostImage !=
                            null)
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(20)),
                            child: Image(
                                fit: BoxFit.cover,
                                image: NetworkImage(HomeFeedDb
                                    .homeFeedList[index].feedPostImage!)),
                          )
                      ],
                    )),
                    // post action area
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // up down and comment
                          Row(
                            spacing: 5,
                            children: [
                              Container(
                                height: 35,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2, color: ColorConstants.bgrey),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.arrow_upward_outlined,
                                          //color: _buildArrowColor(index),
                                          size: 20,
                                        )),
                                    if (HomeFeedDb
                                            .homeFeedList[index].feedPostUp >
                                        HomeFeedDb
                                            .homeFeedList[index].feedPostDown)
                                      Text(
                                          "${HomeFeedDb.homeFeedList[index].feedPostUp}"),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.arrow_downward,
                                            size: 20)),
                                    if (HomeFeedDb
                                            .homeFeedList[index].feedPostUp <
                                        HomeFeedDb
                                            .homeFeedList[index].feedPostDown)
                                      Text(
                                          "${HomeFeedDb.homeFeedList[index].feedPostDown}"),
                                  ],
                                ),
                              ),
                              Container(
                                width: 80,
                                height: 35,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2, color: ColorConstants.bgrey),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.chat_bubble)),
                                    Text(
                                        "${HomeFeedDb.homeFeedList[index].feedPostComments.length}")
                                  ],
                                ),
                              )
                            ],
                          ),

                          //share
                          Row(
                            spacing: 5,
                            children: [
                              Container(
                                height: 35,
                                width: 45,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2, color: ColorConstants.bgrey),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Icon(Icons.verified_outlined),
                              ),
                              Container(
                                height: 35,
                                width: 45,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2, color: ColorConstants.bgrey),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Icon(Icons.arrow_outward),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ));
  }
}
