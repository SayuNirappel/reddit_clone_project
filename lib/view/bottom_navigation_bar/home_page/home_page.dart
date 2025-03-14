import 'package:flutter/material.dart';
import 'package:reddit_clone_project/utils/constants/color_constants.dart';
import 'package:reddit_clone_project/utils/constants/image_constants.dart';
import 'package:reddit_clone_project/view/bottom_navigation_bar/home_page/home_feed_db.dart';
import 'package:reddit_clone_project/view/warning_page/warning_page.dart';

void main() {}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push((context),
                  MaterialPageRoute(builder: (context) => WarningPage()));
            },
            icon: Icon(Icons.menu)),
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
          CircleAvatar(
            foregroundImage: AssetImage(ImageConstants.titleImage),
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
                color: Colors.lightGreenAccent,
              ),
              child: Column(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              child: Row(),
                            ),
                            Container(
                              child: Row(),
                            )
                          ],
                        ),
                        Row(
                          spacing: 5,
                          children: [
                            Container(
                              width: 40,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 2, color: Colors.black),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Icon(Icons.verified_outlined),
                            ),
                            Container(
                              width: 40,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 2, color: Colors.black),
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
}
