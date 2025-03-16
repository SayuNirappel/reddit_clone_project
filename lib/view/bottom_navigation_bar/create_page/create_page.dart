import 'package:flutter/material.dart';
import 'package:reddit_clone_project/model/community_title_model.dart';
import 'package:reddit_clone_project/utils/constants/color_constants.dart';
import 'package:reddit_clone_project/view/bottom_navigation_bar/bottom_navigation.dart';
import 'package:reddit_clone_project/view/bottom_navigation_bar/community_page/community_content_db.dart';
import 'package:reddit_clone_project/view/bottom_navigation_bar/home_page/home_page.dart';

void main() {}

class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  TextEditingController titlecontroller = TextEditingController();
  String? drpvalue;
  //bool filled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              // if (filled == true) {
              Navigator.pushReplacement((context),
                  MaterialPageRoute(builder: (context) => BottomNavigation()));
              //}
            },
            child: Icon(Icons.close)),
        actions: [
          InkWell(
            onTap: () {
              Navigator.pushReplacement((context),
                  MaterialPageRoute(builder: (context) => BottomNavigation()));
            },
            child: Container(
              width: 50,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorConstants.bgrey),
              child: Center(
                child: Text(
                  "Post",
                  style: TextStyle(color: ColorConstants.black),
                ),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //drop down communities

            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ColorConstants.bgrey),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: DropdownButton(
                    icon: Icon(
                      Icons.unfold_more,
                      color: ColorConstants.black,
                    ),
                    value: drpvalue,
                    //
                    // hint row
                    //
                    hint: Row(
                      spacing: 2,
                      children: [
                        Icon(Icons.circle_notifications_outlined),
                        Text(
                          "Select a community",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: ColorConstants.black),
                        ),
                      ],
                    ),
                    //
                    //dd items
                    items: List.generate(
                        CommunityTitleModel.ct1.length,
                        (index) => DropdownMenuItem(
                              value: CommunityTitleModel.ct1[index],
                              child: Text(CommunityTitleModel.ct1[index]),
                            )),
                    onChanged: (value) {
                      drpvalue = value;
                      setState(() {});
                    }),
              ),
            ),

            //title
            TextField(
              controller: titlecontroller,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Title",
                  hintMaxLines: 1,
                  hintStyle: TextStyle(
                      fontSize: 30,
                      color: ColorConstants.bgrey,
                      fontWeight: FontWeight.bold)),
            ),
            //tags
            Container(
              decoration: BoxDecoration(
                color: ColorConstants.bgrey,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  "Add tag and flair (optional)",
                  style: TextStyle(
                      color: ColorConstants.black, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //last text field which is expanded
            Row(
              children: [
                Expanded(
                    child: TextField(
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "body text (optional)",
                      hintStyle: TextStyle(color: ColorConstants.bgrey)),
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
