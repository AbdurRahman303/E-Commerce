// import 'package:e_commerce/widgets/my_textfromfield_widgets.dart';
import 'package:e_commerce/appColors/app_colors.dart';
import 'package:e_commerce/screens/home/home_page.dart';
import 'package:e_commerce/screens/sign%20up/sign_up.dart';
import 'package:e_commerce/widgets/button_widget.dart';
import 'package:e_commerce/widgets/my_textfromfield_widgets.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Widget buildToppart({required BuildContext context}) {
    return Column(
      children: [
        Image.asset(
          "images/hard.png",
          height: 80,
        ),
        SizedBox(
          height: 100,
        ),
        Column(
          children: [
            MyTextFromField(
              hinText: "E-mail",
              obscureText: false,
            ),
            MyTextFromField(
              hinText: "Password",
              obscureText: true,
            ),
          ],
        ),
        SizedBox(
          height: 80,
        ),

        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Material(
                borderRadius: BorderRadius.circular(10),
                elevation: 6,
                color: AppColors.baseLightOrangeColor,
                child: MaterialButton(
                  minWidth: 150,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Text(
                        "Sign In",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Material(
                borderRadius: BorderRadius.circular(10),
                elevation: 6,
                color: AppColors.baseLightPinkColor,
                child: MaterialButton(
                  minWidth: 150,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
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
            ],
          ),
        ),

        //
        SizedBox(
          height: 20,
        ),
        Text(
          'Forgot Password?',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        )
      ],
    );
  }

  Widget buildBottomPart({required BuildContext context}) {
    return Container(
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "Sign In With",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Material(
                  child: MaterialButton(
                    shape: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 0.5,
                        color: AppColors.baseGrey40Color,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    onPressed: () {},
                    child: SvgPicture.asset(
                      "images/google.svg",
                      color: AppColors.baseDarkOrangeColor,
                      width: 45,
                    ),
                  ),
                ),
                Material(
                  child: MaterialButton(
                    shape: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 0.5,
                        color: AppColors.baseGrey40Color,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    onPressed: () {},
                    child: SvgPicture.asset(
                      "images/facbook.svg",
                      color: AppColors.baseDarkOrangeColor,
                      width: 45,
                    ),
                  ),
                ),
                Material(
                  child: MaterialButton(
                    shape: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 0.5,
                        color: AppColors.baseGrey40Color,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    onPressed: () {},
                    child: SvgPicture.asset(
                      "images/twitter.svg",
                      color: AppColors.baseDarkOrangeColor,
                      width: 45,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildToppart(context: context),
                buildBottomPart(context: context),
              ],
            )
          ],
        ),
      )),
    );
  }
}
