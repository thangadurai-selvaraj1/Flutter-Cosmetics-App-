import 'package:cosmetics_app/utils/Colors.dart';
import 'package:cosmetics_app/utils/NavigationRouteNames.dart';
import 'package:cosmetics_app/utils/Strings.dart';
import 'package:cosmetics_app/widget/RatingBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'DetailsScreen.dart';

class DashBoardScreen extends StatefulWidget {
  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CustomColors.kPrimary,
        title: Text(Strings.POPULAR_COSMETICS),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.add_shopping_cart),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
              decoration: BoxDecoration(
                  color: CustomColors.kPrimary,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                    child: Text(
                      "Populer Cosmetics",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: CustomColors.kPrimary,
                    ),
                    height: 320,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: modelList().length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) => InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, NavigationRouteNames.details,
                                    arguments: ScreenArguments(
                                        body:
                                            "As far as I understood, Expanded and ListView work together, because expanded uses the rest of the screen. So if you want a button below the Expanded, you have first the padded Textfield then Expanded (which is scrollable) and then the Button in the bottom of your scren."
                                                "As far as I understood, Expanded and ListView work together, because expanded uses the rest of the screen. So if you want a button below the Expanded, you have first the padded Textfield then Expanded (which is scrollable) and then the Button in the bottom of your scren.",
                                        productName: modelList()[index]['name'],
                                        date: "05 July 2021",
                                        rating: 4.5,
                                        amount: 658.0));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Colors.white,
                                          Colors.white,
                                          Colors.white,
                                          Colors.white,
                                          CustomColors.kSecondary
                                        ]),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            modelList()[index]['image'])),
                                    color: Colors.white60,
                                    borderRadius: BorderRadius.circular(10.0)),
                                width: 220,
                                margin: EdgeInsets.symmetric(horizontal: 20.0),
                                height: 310,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10),
                                      child: Text(
                                        modelList()[index]['name'],
                                        style: TextStyle(
                                            color: CustomColors.kPrimary,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8,
                                          right: 8,
                                          top: 4,
                                          bottom: 10),
                                      child: RatingBar(
                                        onRatingUpdate: (value) => {},
                                        maxRating: 5,
                                        size: 15.0,
                                        selectColor: CustomColors.kPrimary,
                                        value: modelList()[index]['star'],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 20),
                    child: Row(
                      children: [
                        Text(
                          "Populer Cosmetics",
                          style: TextStyle(
                              color: CustomColors.kPrimary,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {},
                          splashColor: CustomColors.kSecondary,
                          child: Text(
                            "All",
                            style: TextStyle(
                                color: CustomColors.kPrimary,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemCount: modelList1().length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) => InkWell(
                              onTap: () {},
                              splashColor: Colors.white60,
                              child: Container(
                                height: 160,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Colors.white,
                                          Colors.white,
                                          Colors.white,
                                          Colors.white,
                                          CustomColors.kSecondary
                                        ]),
                                    image: DecorationImage(
                                        image: AssetImage(
                                          modelList1()[index]['image'],
                                        ),
                                        fit: BoxFit.cover),
                                    color: Colors.white60,
                                    borderRadius: BorderRadius.circular(10.0)),
                                margin: EdgeInsets.symmetric(
                                    horizontal: 20.0, vertical: 15),
                              ),
                            )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  List<dynamic> modelList() {
    return [
      {'name': 'Alvin', 'star': 5.0, 'image': 'assets/images/product1.png'},
      {'name': 'gghhhj', 'star': 5.0, 'image': 'assets/images/product1.png'},
      {'name': 'gghhhj', 'star': 5.0, 'image': 'assets/images/product1.png'},
      {'name': 'gghhhj', 'star': 5.0, 'image': 'assets/images/product1.png'},
      {'name': 'gghhhj', 'star': 5.0, 'image': 'assets/images/product1.png'},
      {'name': 'gghhhj', 'star': 5.0, 'image': 'assets/images/product1.png'},
      {'name': 'gghhhj', 'star': 5.0, 'image': 'assets/images/product1.png'},
      {'name': 'gghhhj', 'star': 5.0, 'image': 'assets/images/product1.png'},
      {'name': 'gghhhj', 'star': 5.0, 'image': 'assets/images/product1.png'},
    ];
  }

  List<dynamic> modelList1() {
    return [
      {
        'name': 'gghhhj',
        'star': 5.0,
        'image': 'assets/images/product_full1.png'
      },
      {
        'name': 'gghhhj',
        'star': 5.0,
        'image': 'assets/images/product_full1.png'
      },
    ];
  }
}
