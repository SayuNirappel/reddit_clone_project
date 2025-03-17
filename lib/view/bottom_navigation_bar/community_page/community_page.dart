import 'package:flutter/material.dart';
import 'package:reddit_clone_project/model/community_title_model.dart';
import 'package:reddit_clone_project/utils/constants/color_constants.dart';
import 'package:reddit_clone_project/utils/constants/image_constants.dart';
import 'package:reddit_clone_project/view/bottom_navigation_bar/community_page/community_content_db.dart';
import 'package:reddit_clone_project/view/bottom_navigation_bar/home_page/home_page.dart';
import 'package:reddit_clone_project/view/warning_page/warning_page.dart';

void main() {}

class CommunityPage extends StatefulWidget {
  const CommunityPage({super.key});

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
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
                        color: ColorConstants.black,
                        fontWeight: FontWeight.bold),
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
                                        child: Text(
                                            CommunityTitleModel.ct1[index])),
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
          title: Text(
            "Communities",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: ColorConstants.black),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      (context),
                      MaterialPageRoute(
                          builder: (context) => SinglePageFeed()));
                },
                icon: Icon(Icons.search)),
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
          padding: EdgeInsets.all(10),
          child: ListView.builder(
              itemCount: CommunityTitleModel.communityTitles.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Column(children: [
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        if (index ==
                            CommunityTitleModel.communityTitles.length - 1)
                          Icon(
                            Icons.emoji_events_outlined,
                            color: Colors.amber,
                          ),
                        Text(
                          CommunityTitleModel.communityTitles[index],
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: ColorConstants.black),
                        ),
                        SizedBox(
                          height: 15,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    //
                    //conditon to seperate content loading
                    //
                    if (index == 0)
                      _BuildContainerGridBuilder(
                        cheight: 150,
                      )
                    else if (index ==
                        CommunityTitleModel.communityTitles.length - 1)
                      _BuildContainerGridBuilderL()
                    else
                      _BuildContainerGridBuilder1(
                        cheight: 200,
                      )
                  ]),
                );
              }),
        ));
  }

//
//recently visited rows
//
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

// community first column grid contents
class _BuildContainerGridBuilder extends StatelessWidget {
  final double cheight;
  const _BuildContainerGridBuilder({
    required this.cheight,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: cheight,
      child: GridView.builder(
          scrollDirection: Axis.horizontal,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisExtent: 200,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5),
          itemCount: CommunityTitleModel.ct1.length,
          itemBuilder: (gcontext, gindex) {
            return Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorConstants.bgrey,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    CommunityTitleModel.ct1[gindex],
                    textAlign: TextAlign.center,
                    style: TextStyle(color: ColorConstants.black),
                  ),
                ));
          }),
    );
  }
}

// community Mid column grids contents
class _BuildContainerGridBuilder1 extends StatelessWidget {
  final double cheight;
  const _BuildContainerGridBuilder1({
    required this.cheight,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: cheight,
      child: GridView.builder(
          scrollDirection: Axis.horizontal,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 300,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5),
          itemCount: CommunityContentDb.communityContentList2.length,
          itemBuilder: (gcontext, gindex) {
            return InkWell(
              onTap: () {
                Navigator.push((context),
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: ColorConstants.bgrey,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              spacing: 5,
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      CommunityContentDb
                                          .communityContentList2[gindex]
                                          .proPic),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      CommunityContentDb
                                          .communityContentList2[gindex].pName,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: ColorConstants.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      CommunityContentDb
                                          .communityContentList2[gindex]
                                          .members,
                                      style: TextStyle(
                                        color: ColorConstants.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              width: 50,
                              height: 23,
                              decoration: BoxDecoration(
                                  color: ColorConstants.bgrey,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Text(
                                  "Join",
                                  style: TextStyle(color: ColorConstants.black),
                                ),
                              ),
                            ),
                            SizedBox()
                          ],
                        ),
                        Text(
                          CommunityContentDb
                              .communityContentList2[gindex].discription,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  )),
            );
          }),
    );
  }
}

//
//
//
//
//
// community Last column grid contents
class _BuildContainerGridBuilderL extends StatelessWidget {
  const _BuildContainerGridBuilderL({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: CommunityContentDb.communityContentList3.length,
        itemBuilder: (gcontext, gindex) => InkWell(
              onTap: () {
                Navigator.push((context),
                    MaterialPageRoute(builder: (context) => SinglePageFeed()));
              },
              child: Container(
                height: 50,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(CommunityContentDb
                          .communityContentList3[gindex].pName),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 17,
                        color: ColorConstants.black,
                      )
                    ],
                  ),
                ),
              ),
            ));
  }
}
