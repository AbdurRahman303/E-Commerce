import 'dart:js';

import 'package:e_commerce/appColors/app_colors.dart';
import 'package:e_commerce/data/home_data.dart';

import 'package:e_commerce/screens/detailscreen/detail_screen.dart';
import 'package:e_commerce/screens/login_screens.dart';
import 'package:e_commerce/widgets/show_all.dart';
import 'package:e_commerce/widgets/singelproduct.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
 

  AppBar buildAppBar({required BuildContext context}) {
    return AppBar(
      bottom: TabBar(
        labelPadding: EdgeInsets.symmetric(horizontal: 22),
        indicator: BoxDecoration(color: Colors.transparent),
        isScrollable: true,
        indicatorSize: TabBarIndicatorSize.label,
        labelStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelColor: AppColors.baseBlackColor,
        labelColor: AppColors.baseDarkPinkColor,
        tabs: [
          Text("All"),
          Text("Helmet"),
        ],
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      title: Column(
        children: [
          Text(
            "Welcome",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          Text(
            "Bike Helmets",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginScreen()));
          },
          icon: SvgPicture.asset(
            "images/user.svg",
            height: 500,
            width: 300,
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "images/search.svg",
              width: 30,
            ))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: buildAppBar(context: context),
        body: TabBarView(children: [
          ListView(
            physics: BouncingScrollPhysics(),
            children: [
              ShowAll(
                leftText: "New Helmet",
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: GridView.builder(
                    shrinkWrap: true,
                    primary: true,
                    itemCount: sigleProductData.length,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.7,
                    ),
                    itemBuilder: (context, index) {
                      var data = sigleProductData[index];
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailScreen(
                                        data: data,
                                      )));
                        },
                        child: SingleProductWidget(
                          onPressed: () {
                            // ));
                          },
                          productImage: data.productImage,
                          productModel: data.productModel,
                          productName: data.productName,
                          productOldPrice: data.productOldPrice,
                          productPrice: data.productPrice,
                        ),
                      );
                    }),
              ),
            ],
          ),
          ListView(
            physics: BouncingScrollPhysics(),
            children: [
              ShowAll(
                leftText: "New Helmet",
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: GridView.builder(
                    shrinkWrap: true,
                    primary: true,
                    itemCount: colothsData.length,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.7,
                    ),
                    itemBuilder: (context, index) {
                      var data = colothsData[index];
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailScreen(
                                        data: data,
                                      )));
                        },
                        child: SingleProductWidget(
                          onPressed: () {},
                          productImage: data.productImage,
                          productModel: data.productModel,
                          productName: data.productName,
                          productOldPrice: data.productOldPrice,
                          productPrice: data.productPrice,
                        ),
                      );
                    }),
              ),
            ],
          ),
        ]),
       
      ),
    );
  }

  
}
