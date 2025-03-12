import 'package:flutter/material.dart';
import 'package:reddit_clone_project/global_widgets/reusable_textfields.dart';
import 'package:reddit_clone_project/utils/constants/image_constants.dart';
import 'package:reddit_clone_project/view/home_page/home_page.dart';

void main() {}

class LogDataPage extends StatelessWidget {
  final String dintype;
  const LogDataPage({required this.dintype, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Log_data_in(
        dintype: dintype,
      ),
    );
  }
}
