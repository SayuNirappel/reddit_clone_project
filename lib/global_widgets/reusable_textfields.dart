import 'package:flutter/material.dart';
import 'package:reddit_clone_project/utils/constants/image_constants.dart';
import 'package:reddit_clone_project/view/home_page/home_page.dart';

class Log_data_in extends StatelessWidget {
  final String dintype;
  const Log_data_in({
    required this.dintype,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(ImageConstants.titleImage),
          radius: 80,
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: "Enter your $dintype"),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            Navigator.pushReplacement(
                (context), MaterialPageRoute(builder: (context) => HomePage()));
          },
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(10),
                color: Colors.black),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Continue",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        )
      ],
    );
  }
}
