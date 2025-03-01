import 'package:flutter/material.dart';

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
              height: 40,
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
            Container(
              height: 40,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.mobile_friendly),
                  Text(
                    "Continue with phone number",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox()
                ],
              ),
            ),
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
