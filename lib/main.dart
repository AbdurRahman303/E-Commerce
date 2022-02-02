import 'package:e_commerce/screens/home/home_page.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Helmet',
      theme: ThemeData(
        // ignore: prefer_const_constructors
        appBarTheme: AppBarTheme(
            // ignore: prefer_const_constructors
            iconTheme: IconThemeData(
                // color: AppColors.baseBlackColor,
                )),
        primarySwatch: Colors.blue,
      ),

      // home: LoginScreen(),
      home: HomePage(),

      // home: SignUp(),
    );
  }
}
