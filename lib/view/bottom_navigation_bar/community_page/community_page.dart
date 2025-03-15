import 'package:flutter/material.dart';
import 'package:reddit_clone_project/utils/constants/color_constants.dart';
import 'package:reddit_clone_project/utils/constants/image_constants.dart';
import 'package:reddit_clone_project/view/warning_page/warning_page.dart';

void main() {}

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Normal drawer (From Left) body
      drawer: Drawer(
        child: Center(
          child: Text("Drawer Working"),
        ),
      ),
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
                Navigator.push((context),
                    MaterialPageRoute(builder: (context) => WarningPage()));
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
    );
  }
}
