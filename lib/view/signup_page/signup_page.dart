import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:reddit_clone_project/global_widgets/reusable_containers.dart';
import 'package:reddit_clone_project/utils/constants/color_constants.dart';
import 'package:reddit_clone_project/utils/constants/image_constants.dart';
import 'package:reddit_clone_project/view/bottom_navigation_bar/bottom_navigation.dart';
import 'package:reddit_clone_project/view/bottom_navigation_bar/home_page/home_page.dart';
import 'package:reddit_clone_project/view/login_page/login_page.dart';
import 'package:reddit_clone_project/view/warning_page/warning_page.dart';

void main() {}

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(ImageConstants.titleImage),
            ),
            Text(
              "Sign Up for Reddit",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    (context),
                    MaterialPageRoute(
                        builder: (context) => BottomNavigation()));
              },
              child: ReusableContainer(
                ctext: "Continue with phone number",
                cicon: Icons.phone_android,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    (context),
                    MaterialPageRoute(
                        builder: (context) => BottomNavigation()));
              },
              child: ReusableContainer(
                ctext: "Continue with Google",
                cicon: Icons.g_mobiledata,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    (context),
                    MaterialPageRoute(
                        builder: (context) => BottomNavigation()));
              },
              child: ReusableContainer(
                ctext: "Continue with email",
                cicon: Icons.person_2_outlined,
              ),
            ),
            Spacer(),
            RichText(
                text: TextSpan(children: [
              TextSpan(text: "By continuing, you agree to our "),
              TextSpan(
                  text: "User Agreement",
                  style: TextStyle(fontWeight: FontWeight.bold),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SinglePageFeed()));
                    }),
              TextSpan(text: " and acknowledge that you understand the "),
              TextSpan(
                  text: "Privacy Policy",
                  style: TextStyle(fontWeight: FontWeight.bold),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SinglePageFeed()));
                    })
            ])),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                      border: Border.all(color: ColorConstants.black)),
                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: Text(
                    "I agree to receive emails about cool stuff on Reddit",
                    softWrap: true,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?"),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            color: ColorConstants.bgrey,
                            border: Border.all(color: ColorConstants.white),
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(7),
                          child: Text(
                            "Log In",
                            style: TextStyle(
                                color: ColorConstants.black,
                                fontWeight: FontWeight.bold),
                          ),
                        )))
              ],
            )
          ],
        ),
      ),
    );
  }
}
