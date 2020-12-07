import 'package:craftBus/views/ChatBotPage.dart';
import 'package:craftBus/views/customerAccountPage.dart';
import 'package:craftBus/views/productPreviewPage.dart';
import 'package:craftBus/views/shoppingCartPage.dart';
import 'package:craftBus/views/vendorAccountPage.dart';
import 'package:flutter/material.dart';
import 'package:gradient_text/gradient_text.dart';

import '../constants.dart';

class PublicProductPage extends StatelessWidget {
  final String type;
  PublicProductPage({this.type});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Column(
              children: [
                // AppBar
                Container(
                  height: 105,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                          Color.fromRGBO(255, 210, 43, 1.0),
                          Color.fromRGBO(255, 133, 3, 1.0)
                        ]),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 5.0, right: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            if (type == "CUSTOMER") {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CustomerAccountPage(),
                                ),
                              );
                            } else {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => VendorAccountPage(),
                                ),
                              );
                            }
                          },
                          icon: Icon(
                            Icons.menu_rounded,
                            color: Colors.white,
                          ),
                        ),
                        kTitleText,
                        IconButton(
                          icon: Icon(Icons.shopping_cart_rounded),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ShoppingCartPage(),
                              ),
                            );
                          },
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                // ScrollBar
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(top: 20.0),
                          child: GradientText("Today's Deals",
                              gradient: LinearGradient(colors: [
                                const Color.fromRGBO(255, 210, 43, 1.0),
                                const Color.fromRGBO(255, 133, 3, 1.0)
                              ]),
                              style: TextStyle(fontSize: 42),
                              textAlign: TextAlign.left),
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 25.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ProductPreviewPage(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            child: Image(
                                              image: NetworkImage(
                                                  'https://3.imimg.com/data3/CE/BQ/MY-8543683/traditional-handicrafts-500x500.jpg'),
                                              height: 80.0,
                                            ),
                                            height: 100.0,
                                            alignment: Alignment.topCenter,
                                            padding: EdgeInsets.symmetric(
                                                vertical: 10.0,
                                                horizontal: 10.0),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 5.0, horizontal: 2.0),
                                            child: Text("Peacock",
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.grey,
                                                )),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 5.0, horizontal: 2.0),
                                            child: Row(
                                              children: <Widget>[
                                                Container(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 7.0),
                                                    child: Text("100\$",
                                                        style: TextStyle(
                                                            fontSize: 11,
                                                            color: Colors.grey,
                                                            decoration:
                                                                TextDecoration
                                                                    .lineThrough)),
                                                  ),
                                                ),
                                                Container(
                                                  width: 3.0,
                                                ),
                                                Container(
                                                  child: Text("99\$",
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        color:
                                                            Colors.orangeAccent,
                                                      )),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      width: 150.0,
                                      height: 200.0,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 15),
                                      margin: EdgeInsets.only(left: 30.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey,
                                              offset: Offset(7, 5),
                                              blurRadius: 12.0,
                                              spreadRadius: 0.8)
                                        ],
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ShoppingCartPage(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      width: 45,
                                      height: 45,
                                      margin: EdgeInsets.only(
                                          top: 170.0, left: 115.0),
                                      child: Icon(
                                        Icons.shopping_cart_outlined,
                                        size: 24.0,
                                        color: Colors.white,
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          gradient: LinearGradient(
                                              begin: Alignment.bottomLeft,
                                              end: Alignment.topRight,
                                              colors: <Color>[
                                                const Color.fromRGBO(
                                                    255, 210, 43, 1.0),
                                                const Color.fromRGBO(
                                                    255, 133, 3, 1.0)
                                              ])),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 5.0,
                                height: 230.0,
                              ),
                              Stack(
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ProductPreviewPage(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            child: Image(
                                              image: NetworkImage(
                                                  'https://images-na.ssl-images-amazon.com/images/I/61REX93q6xL._SL1500_.jpg'),
                                              height: 80.0,
                                            ),
                                            height: 100.0,
                                            alignment: Alignment.topCenter,
                                            padding: EdgeInsets.symmetric(
                                                vertical: 10.0,
                                                horizontal: 10.0),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 5.0, horizontal: 2.0),
                                            child: Text("Tall Vase",
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.grey,
                                                )),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 5.0, horizontal: 2.0),
                                            child: Row(
                                              children: <Widget>[
                                                Container(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 7.0),
                                                    child: Text("200\$",
                                                        style: TextStyle(
                                                            fontSize: 11,
                                                            color: Colors.grey,
                                                            decoration:
                                                                TextDecoration
                                                                    .lineThrough)),
                                                  ),
                                                ),
                                                Container(
                                                  width: 3.0,
                                                ),
                                                Container(
                                                  child: Text("149\$",
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        color:
                                                            Colors.orangeAccent,
                                                      )),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      width: 150.0,
                                      height: 200.0,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 15),
                                      margin: EdgeInsets.only(left: 30.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey,
                                              offset: Offset(7, 5),
                                              blurRadius: 12.0,
                                              spreadRadius: 0.8)
                                        ],
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ShoppingCartPage(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      width: 45,
                                      height: 45,
                                      margin: EdgeInsets.only(
                                          top: 170.0, left: 115.0),
                                      child: Icon(
                                        Icons.shopping_cart_outlined,
                                        size: 24.0,
                                        color: Colors.white,
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          gradient: LinearGradient(
                                              begin: Alignment.bottomLeft,
                                              end: Alignment.topRight,
                                              colors: <Color>[
                                                const Color.fromRGBO(
                                                    255, 210, 43, 1.0),
                                                const Color.fromRGBO(
                                                    255, 133, 3, 1.0)
                                              ])),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 5.0,
                                height: 230.0,
                              ),
                              Stack(
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ProductPreviewPage(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            child: Image(
                                              image: NetworkImage(
                                                  'https://img.everychina.com/nimg/a2/6c/be5d763d428989bcbfccbb146326-300x300-0/chinese_gift_traditional_handicrafts_facial_masks_wooden_ladle.jpg'),
                                              height: 80.0,
                                            ),
                                            height: 100.0,
                                            alignment: Alignment.topCenter,
                                            padding: EdgeInsets.symmetric(
                                                vertical: 10.0,
                                                horizontal: 10.0),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 5.0, horizontal: 2.0),
                                            child: Text("Round Vase",
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.grey,
                                                )),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 5.0, horizontal: 2.0),
                                            child: Row(
                                              children: <Widget>[
                                                Container(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 7.0),
                                                    child: Text("500\$",
                                                        style: TextStyle(
                                                            fontSize: 11,
                                                            color: Colors.grey,
                                                            decoration:
                                                                TextDecoration
                                                                    .lineThrough)),
                                                  ),
                                                ),
                                                Container(
                                                  width: 3.0,
                                                ),
                                                Container(
                                                  child: Text("249\$",
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        color:
                                                            Colors.orangeAccent,
                                                      )),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      width: 150.0,
                                      height: 200.0,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 15),
                                      margin: EdgeInsets.only(left: 30.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey,
                                              offset: Offset(7, 5),
                                              blurRadius: 12.0,
                                              spreadRadius: 0.8)
                                        ],
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ShoppingCartPage(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      width: 45,
                                      height: 45,
                                      margin: EdgeInsets.only(
                                          top: 170.0, left: 115.0),
                                      child: Icon(
                                        Icons.shopping_cart_outlined,
                                        size: 24.0,
                                        color: Colors.white,
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          gradient: LinearGradient(
                                              begin: Alignment.bottomLeft,
                                              end: Alignment.topRight,
                                              colors: <Color>[
                                                const Color.fromRGBO(
                                                    255, 210, 43, 1.0),
                                                const Color.fromRGBO(
                                                    255, 133, 3, 1.0)
                                              ])),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 5.0,
                                height: 230.0,
                              ),
                              Stack(
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ProductPreviewPage(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            child: Image(
                                              image: NetworkImage(
                                                  'https://5.imimg.com/data5/SI/FW/MF/SELLER-63096869/bamboo-garden-chair-500x500-500x500.jpg'),
                                              height: 80.0,
                                            ),
                                            height: 100.0,
                                            alignment: Alignment.topCenter,
                                            padding: EdgeInsets.symmetric(
                                                vertical: 10.0,
                                                horizontal: 10.0),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 5.0, horizontal: 2.0),
                                            child: Text("Chair",
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.grey,
                                                )),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 5.0, horizontal: 2.0),
                                            child: Row(
                                              children: <Widget>[
                                                Container(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 7.0),
                                                    child: Text("50\$",
                                                        style: TextStyle(
                                                            fontSize: 11,
                                                            color: Colors.grey,
                                                            decoration:
                                                                TextDecoration
                                                                    .lineThrough)),
                                                  ),
                                                ),
                                                Container(
                                                  width: 3.0,
                                                ),
                                                Container(
                                                  child: Text("45\$",
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        color:
                                                            Colors.orangeAccent,
                                                      )),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      width: 150.0,
                                      height: 200.0,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 15),
                                      margin: EdgeInsets.only(left: 30.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey,
                                              offset: Offset(7, 5),
                                              blurRadius: 12.0,
                                              spreadRadius: 0.8)
                                        ],
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ShoppingCartPage(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      width: 45,
                                      height: 45,
                                      margin: EdgeInsets.only(
                                          top: 170.0, left: 115.0),
                                      child: Icon(
                                        Icons.shopping_cart_outlined,
                                        size: 24.0,
                                        color: Colors.white,
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          gradient: LinearGradient(
                                              begin: Alignment.bottomLeft,
                                              end: Alignment.topRight,
                                              colors: <Color>[
                                                const Color.fromRGBO(
                                                    255, 210, 43, 1.0),
                                                const Color.fromRGBO(
                                                    255, 133, 3, 1.0)
                                              ])),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 5.0,
                                height: 230.0,
                              ),
                              Stack(
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ProductPreviewPage(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            child: Image(
                                              image: NetworkImage(
                                                  'https://k8q7r7a2.stackpathcdn.com/wp-content/uploads/2020/10/Patek-Philippe-Rare-Handcrafts-2020-Exhibition-in-Geneva-8.jpg'),
                                              height: 80.0,
                                            ),
                                            height: 100.0,
                                            alignment: Alignment.topCenter,
                                            padding: EdgeInsets.symmetric(
                                                vertical: 10.0,
                                                horizontal: 10.0),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 5.0, horizontal: 2.0),
                                            child: Text("Lamp",
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.grey,
                                                )),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 5.0, horizontal: 2.0),
                                            child: Row(
                                              children: <Widget>[
                                                Container(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 7.0),
                                                    child: Text("199\$",
                                                        style: TextStyle(
                                                            fontSize: 11,
                                                            color: Colors.grey,
                                                            decoration:
                                                                TextDecoration
                                                                    .lineThrough)),
                                                  ),
                                                ),
                                                Container(
                                                  width: 3.0,
                                                ),
                                                Container(
                                                  child: Text("129\$",
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        color:
                                                            Colors.orangeAccent,
                                                      )),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      width: 150.0,
                                      height: 200.0,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 15),
                                      margin: EdgeInsets.only(left: 30.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey,
                                              offset: Offset(7, 5),
                                              blurRadius: 12.0,
                                              spreadRadius: 0.8)
                                        ],
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ShoppingCartPage(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      width: 45,
                                      height: 45,
                                      margin: EdgeInsets.only(
                                          top: 170.0, left: 115.0),
                                      child: Icon(
                                        Icons.shopping_cart_outlined,
                                        size: 24.0,
                                        color: Colors.white,
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          gradient: LinearGradient(
                                              begin: Alignment.bottomLeft,
                                              end: Alignment.topRight,
                                              colors: <Color>[
                                                const Color.fromRGBO(
                                                    255, 210, 43, 1.0),
                                                const Color.fromRGBO(
                                                    255, 133, 3, 1.0)
                                              ])),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 5.0,
                                height: 230.0,
                              ),
                              Stack(
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ProductPreviewPage(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            child: Image(
                                              image: NetworkImage(
                                                  'https://images-static.nykaa.com/media/catalog/product/d/e/de4c533pf66e06crm.jpg'),
                                              height: 80.0,
                                            ),
                                            height: 100.0,
                                            alignment: Alignment.topCenter,
                                            padding: EdgeInsets.symmetric(
                                                vertical: 10.0,
                                                horizontal: 10.0),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 5.0, horizontal: 2.0),
                                            child: Text("Earrings",
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.grey,
                                                )),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 5.0, horizontal: 2.0),
                                            child: Row(
                                              children: <Widget>[
                                                Container(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 7.0),
                                                    child: Text("150\$",
                                                        style: TextStyle(
                                                            fontSize: 11,
                                                            color: Colors.grey,
                                                            decoration:
                                                                TextDecoration
                                                                    .lineThrough)),
                                                  ),
                                                ),
                                                Container(
                                                  width: 3.0,
                                                ),
                                                Container(
                                                  child: Text("99\$",
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        color:
                                                            Colors.orangeAccent,
                                                      )),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      width: 150.0,
                                      height: 200.0,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 15),
                                      margin: EdgeInsets.only(left: 30.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey,
                                              offset: Offset(7, 5),
                                              blurRadius: 12.0,
                                              spreadRadius: 0.8)
                                        ],
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ShoppingCartPage(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      width: 45,
                                      height: 45,
                                      margin: EdgeInsets.only(
                                          top: 170.0, left: 115.0),
                                      child: Icon(
                                        Icons.shopping_cart_outlined,
                                        size: 24.0,
                                        color: Colors.white,
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          gradient: LinearGradient(
                                              begin: Alignment.bottomLeft,
                                              end: Alignment.topRight,
                                              colors: <Color>[
                                                const Color.fromRGBO(
                                                    255, 210, 43, 1.0),
                                                const Color.fromRGBO(
                                                    255, 133, 3, 1.0)
                                              ])),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 5.0,
                                height: 230.0,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: GradientText("Festival Exclusive",
                              gradient: LinearGradient(
                                colors: [
                                  const Color.fromRGBO(255, 210, 43, 1.0),
                                  const Color.fromRGBO(255, 133, 3, 1.0),
                                ],
                              ),
                              style: TextStyle(fontSize: 42),
                              textAlign: TextAlign.left),
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 25.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 25.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(1, 2),
                                  blurRadius: 10.0,
                                  spreadRadius: 3.0)
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.network(
                                'https://cdn0.desidime.com/topics/photos/1074833/original/desktop-banner.jpg?1570986691'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 25.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(1, 2),
                                  blurRadius: 10.0,
                                  spreadRadius: 3.0)
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.network(
                                'https://1.bp.blogspot.com/-0OSJb6UmM68/WAo3UX5AnHI/AAAAAAAAgts/aIP1c6z1vhQ4UG4NSy9Fyg9sla7dqWJ7ACLcB/s1600/honor%2Boffer%2Bdiwali.jpg'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 25.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(1, 2),
                                  blurRadius: 10.0,
                                  spreadRadius: 3.0)
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.network(
                                'https://www.marketingmind.in/wp-content/uploads/2019/10/Whirlpool.png'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 25.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(1, 2),
                                  blurRadius: 10.0,
                                  spreadRadius: 3.0)
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.network(
                                'https://www.sagmart.com/uploads/2013/10/07/news_image1/lg-offers.jpg'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.center,
              width: 350,
              height: 40,
              margin: EdgeInsets.only(top: 85.0, left: 25.0, right: 25.0),
              padding: EdgeInsets.only(left: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50.0),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      offset: Offset(1, 2),
                      blurRadius: 1.0,
                      spreadRadius: 1.0)
                ],
              ),
              child: TextField(
                cursorColor: Colors.orangeAccent,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.amber),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // TODO: ADD BOT FUNCTIONALITY ON BUTTON CLICK (USER SHOULD BE NAVIGATED TO ANOTHER PAGE(CHATBOT PAGE.))
        onPressed: () {
          print('Action Button Pressed');
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ChatBotPage()));
        },
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Color.fromRGBO(255, 210, 43, 1.0),
                Color.fromRGBO(255, 133, 3, 1.0),
              ],
            ),
          ),
          child: Icon(
            Icons.chat_outlined,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
