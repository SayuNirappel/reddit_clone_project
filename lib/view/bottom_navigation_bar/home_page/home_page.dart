import 'package:flutter/material.dart';
import 'package:reddit_clone_project/model/community_title_model.dart';
import 'package:reddit_clone_project/utils/constants/color_constants.dart';
import 'package:reddit_clone_project/utils/constants/image_constants.dart';
import 'package:reddit_clone_project/view/bottom_navigation_bar/community_page/community_content_db.dart';
import 'package:reddit_clone_project/view/bottom_navigation_bar/home_page/home_feed_db.dart';
import 'package:reddit_clone_project/view/warning_page/warning_page.dart';

void main() {}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? drpvalue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Normal drawer (From Left) body
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
                    Navigator.push((context),
                        MaterialPageRoute(builder: (context) => WarningPage()));
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
                                                    WarningPage()));
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
      appBar: AppBar(
        title: InkWell(
          onTap: () {
            Navigator.push((context),
                MaterialPageRoute(builder: (context) => WarningPage()));
          },
          child: Text(
            "Reddit",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: ColorConstants.rorange),
          ),
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
                            backgroundImage: NetworkImage(
                                HomeFeedDb.homeFeedList[index].feedProfilePic),
                            radius: 15,
                          ),
                          Text(
                            HomeFeedDb.homeFeedList[index].feedProfileName,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Row(
                            spacing: 3,
                            children: [
                              Text(HomeFeedDb.homeFeedList[index].feedPostTime),
                              Icon(
                                Icons.circle,
                                size: 5,
                              ),
                              Text(
                                  HomeFeedDb.homeFeedList[index].feedPostViews),
                              Text("Views")
                            ],
                          ),
                        ],
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
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
                      if (HomeFeedDb.homeFeedList[index].feedPostImage != null)
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
                                      icon:
                                          Icon(Icons.arrow_downward, size: 20)),
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
      ),
    );
  }

  Widget _buildRaw(int vc) {
    return InkWell(
      onTap: () {
        Navigator.push(
            (context), MaterialPageRoute(builder: (context) => WarningPage()));
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

//arrow color

Color? _buildArrowColor(int index) {
  if (HomeFeedDb.homeFeedList[index].feedPostUp >
      HomeFeedDb.homeFeedList[index].feedPostDown) {
    return Colors.green.shade900;
  } else if (HomeFeedDb.homeFeedList[index].feedPostUp <
      HomeFeedDb.homeFeedList[index].feedPostDown) {
    return Colors.redAccent;
  }
  return null;
}
