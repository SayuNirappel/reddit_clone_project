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
  String? dpnamevalue;
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
                    Navigator.push(
                        context,
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
          child: Column(
        spacing: 5,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //profile pic
          Center(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.pexels.com/photos/5749881/pexels-photo-5749881.jpeg?auto=compress&cs=tinysrgb&w=600"),
                      fit: BoxFit.cover)),
              height: 200,
              width: 200,
            ),
          ),
          //profile change ddl
          Center(
            child: DropdownButton(
                value: dpnamevalue,
                hint: Text("Professor"),
                items: [
                  DropdownMenuItem(
                    value: "1",
                    child: Text("Professor"),
                  ),
                  DropdownMenuItem(
                    value: "2",
                    child: Text("Ice Queen"),
                  )
                ],
                onChanged: (value) {
                  dpnamevalue = value;
                  setState(() {});
                }),
          ),
          //online container
          Center(
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.greenAccent.shade700),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Online Status on",
                  style: TextStyle(color: Colors.greenAccent.shade700),
                ),
              ),
            ),
          ),
          //karma and age
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.keyboard_command_key),
              Column(
                children: [Text("13"), Text("karma")],
              ),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.cake),
              Column(
                children: [Text("130d"), Text("Reddit age")],
              )
            ],
          ),
          //achievements
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/3184418/pexels-photo-3184418.jpeg?auto=compress&cs=tinysrgb&w=600"),
              ),
              Column(
                children: [Text("10"), Text("Achievements")],
              ),
              Icon(Icons.arrow_forward_ios)
            ],
          ),

          //profile
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
            child: Row(
              spacing: 10,
              children: [
                Icon(
                  Icons.person,
                  color: ColorConstants.bgrey,
                ),
                Text(
                  "Profile",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),

          //create a community
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
            child: Row(
              spacing: 10,
              children: [
                Icon(
                  Icons.people,
                  color: ColorConstants.bgrey,
                ),
                Text(
                  "Create a community",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          //contributor program
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
            child: Row(
              spacing: 10,
              children: [
                Icon(
                  Icons.flag_circle_sharp,
                  color: ColorConstants.bgrey,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Contributor program",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "0 gold earned",
                      style: TextStyle(color: Colors.blueGrey),
                    )
                  ],
                )
              ],
            ),
          ),
          //reddit premium
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
            child: Row(
              spacing: 10,
              children: [
                Icon(
                  Icons.window,
                  color: ColorConstants.bgrey,
                ),
                Column(
                  children: [
                    Text(
                      "Reddit Premium",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Ads free browsing",
                      style: TextStyle(color: Colors.blueGrey),
                    )
                  ],
                )
              ],
            ),
          ),
          //saved
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
            child: Row(
              spacing: 10,
              children: [
                Icon(
                  Icons.copy,
                  color: ColorConstants.bgrey,
                ),
                Text(
                  "Saved",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          //history
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
            child: Row(
              spacing: 10,
              children: [
                Icon(
                  Icons.history,
                  color: ColorConstants.bgrey,
                ),
                Text(
                  "History",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          //settings
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
            child: Row(
              spacing: 10,
              children: [
                Icon(
                  Icons.settings,
                  color: ColorConstants.bgrey,
                ),
                Text(
                  "Settings",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ],
      )),
      //
      //Appbar
      //
      appBar: AppBar(
        title: InkWell(
          onTap: () {
            Navigator.push((context),
                MaterialPageRoute(builder: (context) => SinglePageFeed()));
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
