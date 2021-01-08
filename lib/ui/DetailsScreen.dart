import 'package:cosmetics_app/utils/Colors.dart';
import 'package:cosmetics_app/utils/Strings.dart';
import 'package:cosmetics_app/widget/RatingBar.dart';
import 'package:flutter/material.dart';

class ScreenArguments {
  var body = '';
  var productName = '';
  var date = '';
  var rating = 0.0;
  var amount = 0.0;

  ScreenArguments(
      {this.body, this.productName, this.date, this.rating, this.amount});
}

class DetailsScreen extends StatefulWidget {
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    //Pass Args
    final ScreenArguments args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 280,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/product_full1.png'),
                          fit: BoxFit.cover)),
                  child: SafeArea(
                    child: Column(
                      children: [
                        AppBar(
                          elevation: 0,
                          backgroundColor: Colors.transparent,
                          leading: IconButton(
                            color: Colors.black,
                            icon: Icon(Icons.menu),
                            onPressed: () {},
                          ),
                          centerTitle: true,
                          actions: [
                            IconButton(
                              color: Colors.black,
                              icon: Icon(Icons.add_shopping_cart),
                              onPressed: () {},
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 260),
                  height: 420,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        args.productName,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        args.body,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        args.productName,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        args.date,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RatingBar(
                            onRatingUpdate: (value) => {},
                            maxRating: 5,
                            size: 20.0,
                            selectColor: CustomColors.kSecondary,
                            value: args.rating,
                          ),
                          SizedBox(
                            width: 4.0,
                          ),
                          Text(
                            "${args.rating}/5.0",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white),
                              child: IconButton(
                                  icon: Icon(Icons.share),
                                  color: Colors.black,
                                  onPressed: () {}),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white),
                              child: IconButton(
                                  icon: Icon(Icons.save),
                                  color: Colors.black,
                                  onPressed: () {}),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white),
                              child: IconButton(
                                  icon: Icon(Icons.star_border),
                                  color: Colors.black,
                                  onPressed: () {}),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              margin:
                  EdgeInsets.only(left: 10.0, top: 10, right: 10, bottom: 10),
              child: Container(
                margin: EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Spacer(),
                    Spacer(),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: CustomColors.kSecondary,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, top: 5, bottom: 5),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Text(
                                "\$${args.amount}",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            MaterialButton(
                              color: Colors.black,
                              textColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                              onPressed: () {},
                              child: Text(Strings.BUY_NOW),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey),
                        child: IconButton(
                            iconSize: 35,
                            icon: Icon(Icons.shopping_bag_outlined),
                            color: Colors.black,
                            onPressed: () {}),
                      ),
                    ),
                    Spacer(),
                    Spacer(),
                    Spacer()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
