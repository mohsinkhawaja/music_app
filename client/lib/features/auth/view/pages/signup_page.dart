import 'package:flutter/material.dart';
import 'package:music_app/core/theme/app_pallete.dart';
import 'package:music_app/features/auth/view/widgets/custom_field.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Sign UP.",
              style: TextStyle(
                  color: Pallete.whiteColor,
                  fontSize: 50,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.0,
            ),
            CustomField(
              hintText: "Name",
            ),
            SizedBox(
              height: 15.0,
            ),
            CustomField(
              hintText: "Email",
            ),
            SizedBox(
              height: 15.0,
            ),
            CustomField(
              hintText: "Password",
            ),
          ],
        ),
      ),
    );
  }
}
