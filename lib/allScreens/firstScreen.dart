import 'package:flutter/material.dart';
import 'package:tripti/Widgets/button.dart';

import '../Widgets/gradientTextColor.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    voidAction() {
      Navigator.pushNamed(context, "signInScreen");
    }

    Color yello = Color.fromARGB(255, 247, 186, 18);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.bottomCenter,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Column(
                children: [
                  Icon(Icons.add_business_rounded),
                  SizedBox(
                    height: 60,
                  ),
                  GradientText(
                    'TRIPTI',
                    style: const TextStyle(fontSize: 100),
                    gradient: LinearGradient(colors: [
                      Colors.black,
                      Colors.black,
                      Colors.black,
                      Colors.yellow,
                      Colors.yellow,
                      Colors.yellow,
                    ]),
                  ),
                  GradientText(
                    'Food For All',
                    style: const TextStyle(fontSize: 50),
                    gradient: LinearGradient(colors: [
                      Colors.red,
                      Colors.yellow,
                      Colors.black,
                      Colors.yellow,
                      Colors.black,
                      Colors.yellow,
                      Colors.black,
                      Colors.blue
                    ]),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 200,
            ),
            Container(
              child: Column(
                children: [
                  Button("Log in", Colors.yellow, Colors.black, () {
                    Navigator.pushNamed(context, "loginScreen");
                  }),
                  SizedBox(height: 8.0),
                  Button("Sign up", Colors.yellow, Colors.black, voidAction),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
