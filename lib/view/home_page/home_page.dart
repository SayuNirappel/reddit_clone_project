import 'package:flutter/material.dart';
import 'package:reddit_clone_project/utils/constants/color_constants.dart';
import 'package:reddit_clone_project/utils/constants/image_constants.dart';
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
    );
  }
}
