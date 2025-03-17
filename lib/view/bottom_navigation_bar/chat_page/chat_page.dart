import 'package:flutter/material.dart';
import 'package:reddit_clone_project/model/community_title_model.dart';
import 'package:reddit_clone_project/utils/constants/color_constants.dart';
import 'package:reddit_clone_project/utils/constants/image_constants.dart';
import 'package:reddit_clone_project/view/bottom_navigation_bar/community_page/community_content_db.dart';
import 'package:reddit_clone_project/view/warning_page/warning_page.dart';

void main() {}

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  String? drpvalue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recently Viewed",
                  style: TextStyle(
                      color: ColorConstants.black, fontWeight: FontWeight.bold),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        (context),
                        MaterialPageRoute(
                            builder: (context) => SinglePageFeed()));
                  },
                  child: Text(
                    "See All",
                    style: TextStyle(
                        color: ColorConstants.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            //
            //Hard coded area need to use index
            //
            _buildRaw(0),
            _buildRaw(1),
            _buildRaw(2),

            Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                    child: DropdownButton(
                        value: drpvalue,
                        //
                        // hint
                        //
                        hint: Text(
                          "Your Communities",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: ColorConstants.black),
                        ),
                        //
                        //drawer dd items
                        items: List.generate(
                            CommunityTitleModel.ct1.length,
                            (index) => DropdownMenuItem(
                                  value: CommunityTitleModel.ct1[index],
                                  child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            (context),
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SinglePageFeed()));
                                      },
                                      child:
                                          Text(CommunityTitleModel.ct1[index])),
                                )),
                        onChanged: (value) {
                          drpvalue = value;
                          setState(() {});
                        })))
          ],
        ),
      )),
      //end Drawer (from right) body
      endDrawer: Drawer(
        child: Center(
          child: Text("End Drawer Working"),
        ),
      ),

      //
      //
      //AppBar
      //
      //
      appBar: AppBar(
        title: Text(
          "Chats",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: ColorConstants.black),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          SizedBox(
            width: 10,
          ),
          Builder(
            builder: (context) => InkWell(
              onTap: () {
                Scaffold.of(context).openEndDrawer();
              },
              child: CircleAvatar(
                foregroundImage: AssetImage(ImageConstants.titleImage),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      //
      //Body
      //
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          spacing: 15,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Discover Channels",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: ColorConstants.black),
                ),
                Text(
                  "View All",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: ColorConstants.black),
                )
              ],
            ),
            //
            //scroll suggestion row
            //
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(spacing: 10, children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: ColorConstants.bgrey),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(7),
                    child: Row(
                      spacing: 10,
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(CommunityContentDb
                              .communityContentList2[0].proPic),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(CommunityContentDb
                                .communityContentList3[0].pName),
                            Text(CommunityContentDb
                                .communityContentList3[0].members),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: ColorConstants.bgrey),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(7),
                    child: Row(
                      spacing: 10,
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(CommunityContentDb
                              .communityContentList2[1].proPic),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(CommunityContentDb
                                .communityContentList3[1].pName),
                            Text(CommunityContentDb
                                .communityContentList3[1].members),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: ColorConstants.bgrey),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(7),
                    child: Row(
                      spacing: 10,
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(CommunityContentDb
                              .communityContentList2[0].proPic),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(CommunityContentDb
                                .communityContentList3[2].pName),
                            Text(CommunityContentDb
                                .communityContentList3[2].members),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ]),
            ),
            Row(
              spacing: 10,
              children: [
                Icon(
                  Icons.subdirectory_arrow_left,
                  color: ColorConstants.black,
                ),
                Text(
                  "Threads",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: ColorConstants.black),
                )
              ],
            ),
            //
            //threads view
            //
            Expanded(
              child: ListView.builder(
                itemCount: CommunityContentDb.communityContentList2.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              spacing: 10,
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      CommunityContentDb
                                          .communityContentList2[index].proPic),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(CommunityContentDb
                                        .communityContentList2[index].pName),
                                    Text(
                                      "Hi",
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Text("12:01 am")
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

//
//drawer builder
//
  _buildRaw(int vc) {
    return InkWell(
      onTap: () {
        Navigator.push((context),
            MaterialPageRoute(builder: (context) => SinglePageFeed()));
      },
      child: Row(
        spacing: 15,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                CommunityContentDb.communityContentList2[vc].proPic),
          ),
          Text(CommunityContentDb.communityContentList2[vc].pName)
        ],
      ),
    );
  }
}
