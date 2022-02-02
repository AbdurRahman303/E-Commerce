import 'package:e_commerce/appColors/app_colors.dart';
import 'package:e_commerce/models/singelModel.dart';
import 'package:e_commerce/screens/detailscreen/add_to_card.dart';
import 'package:e_commerce/screens/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailScreen extends StatefulWidget {
  final singelModel data;
  DetailScreen({required this.data});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  AppBar buildAppbar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: Text(
        "dett",
        style: TextStyle(color: AppColors.baseBlackColor),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "images/heart.svg",
            width: 35,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "images/upload.svg",
            width: 35,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage(
                "images/logo_helmet.png",
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.data.productName,
                  style: TextStyle(
                    color: AppColors.baseBlackColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  widget.data.productModel,
                  style: TextStyle(
                    color: AppColors.baseGrey50Color,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.data.productPrice.toString(),
                  style: TextStyle(
                    color: AppColors.baseBlackColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  widget.data.productOldPrice.toString(),
                  style: TextStyle(
                    color: AppColors.baseBlackColor,
                    fontSize: 16,
                    decoration: TextDecoration.lineThrough,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(
                    widget.data.productImage,
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 15, top: 15),
                        child: Image.network(widget.data.productSecondImage),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 15, top: 15),
                        child: Image.network(widget.data.productThirdImage),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 15, top: 15),
                        child: Image.network(widget.data.productFourImage),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: MaterialButton(
              elevation: 0,
              height: 50,
              color: AppColors.baseDarkOrangeColor,
              shape: RoundedRectangleBorder(
                  side: BorderSide.none,
                  borderRadius: BorderRadius.circular(5)),
              child: Text(
                "Add To Card",
                style: TextStyle(
                  color: AppColors.baseWhiteColor,
                  fontSize: 20,
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Payment()));
              },
            ),
          ),
          ExpansionTile(
            title: Text(
              "Description",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: AppColors.baseBlackColor,
              ),
            ),
            children: [
              ListTile(
                title: Wrap(
                  children: [
                    Text(
                      "The AGV K1 Helmet has an aerodynamic shape, ventilation scheme, and spoiler developed for the wind tunnel tested Corsa R and Pista GP R. The shell and spoiler provide aerodynamic stability at speed and the spoiler itself features a passive rear vent to extract warm air from the helmet as you ride. The K1 also incorporates the central air intake above the visor taken directly from MotoGP developed Pista GP R to provide best-in-class ventilation.",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    MaterialButton(
                      height: 55,
                      elevation: 0,
                      child: Text("More"),
                      onPressed: () {},
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
