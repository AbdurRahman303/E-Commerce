import 'dart:js';

import 'package:e_commerce/appColors/app_colors.dart';
import 'package:e_commerce/screens/home/home_page.dart';
import 'package:e_commerce/screens/login_screens.dart';
import 'package:e_commerce/widgets/my_textfromfield_widgets.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  Widget buildTopPart({required BuildContext context}) {
    return Column(
      children: [
        Image.asset(
          "images/hard.png",
          width: 150,
          height: 150,
        ),
        MyTextFromField(
          hinText: "Full Name",
          obscureText: false,
        ),
        MyTextFromField(
          hinText: "Email",
          obscureText: false,
        ),
        MyTextFromField(
          hinText: "Password",
          obscureText: true,
        ),
        MyTextFromField(
          hinText: "Confirm Password",
          obscureText: true,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Material(
            borderRadius: BorderRadius.circular(10),
            elevation: 6,
            color: AppColors.baseLightOrangeColor,
            child: MaterialButton(
              minWidth: 150,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            buildTopPart(context: context),
          ],
        ),
      ),
    );
  }
}
