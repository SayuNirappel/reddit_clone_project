import 'package:flutter/material.dart';
import 'package:reddit_clone_project/global_widgets/reusable_containers.dart';

void main() {}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
              backgroundImage: AssetImage("assets/images/redditlogo.jpeg"),
            ),
            Text(
              "Log in to Reddit",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            ReusableContainer(),
            Container(),
            Container(),
            Spacer(),
            Text("data"),
            Row(
              children: [
                Container(),
                Text("I agree to receive emails about cool stuff on Reddit")
              ],
            ),
            Row(
              children: [
                Text("Don't have an account?"),
                TextButton(onPressed: () {}, child: Text("Sign up"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
