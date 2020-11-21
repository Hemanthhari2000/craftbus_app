import 'package:craftBus/constants.dart';
import 'package:craftBus/views/shoppingCartPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_text/gradient_text.dart';

class ProductPreviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: 5.0, right: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                        kTitleText,
                        IconButton(
                          icon: Icon(Icons.shopping_cart_rounded),
                          onPressed: () {},
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
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
                ),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 60.0, bottom: 10.0),
                        height: 160.0,
                        width: 400.0,
                        decoration: BoxDecoration(),
                        child: ClipRRect(
                          child: Image.network(
                            'https://3.imimg.com/data3/CE/BQ/MY-8543683/traditional-handicrafts-500x500.jpg',
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                                margin: EdgeInsets.only(left: 40.0, top: 30.0),
                                child: Text(
                                  "Peacock",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 50,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                                width: 190.0,
                                margin: EdgeInsets.only(
                                  left: 40.0,
                                ),
                                child: Text(
                                  "Statue",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(1, 5),
                                    blurRadius: 5.0,
                                    spreadRadius: 0.2)
                              ],
                            ),
                            margin: EdgeInsets.only(left: 30.0, top: 30.0),
                            padding: EdgeInsets.symmetric(
                                vertical: 20.0, horizontal: 5.0),
                            height: 80.0,
                            width: 80.0,
                            child: Text(
                              "99\$",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 35,
                                color: Colors.orange,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(
                            left: 40.0, top: 10.0, right: 130.0, bottom: 20.0),
                        child: Text(
                          'Limited edition of 300 pieces. '
                          'Made of cast aluminum with a brass finish. '
                          'Hand enameled and hand set with Swarovski® crystals. 32"W x 10"D x 25"T.'
                          '                               Made in India',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black87,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        child: GradientText("View other items",
                            gradient: LinearGradient(colors: [
                              const Color.fromRGBO(255, 210, 43, 1.0),
                              const Color.fromRGBO(255, 133, 3, 1.0)
                            ]),
                            style: TextStyle(fontSize: 35),
                            textAlign: TextAlign.left),
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(
                            vertical: 30.0, horizontal: 40.0),
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
                                Container(
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        child: Image(
                                          image: NetworkImage(
                                              'https://images-eu.ssl-images-amazon.com/images/I/41nUbYawYdL._SX300_QL70_ML2_.jpg'),
                                          height: 80.0,
                                        ),
                                        height: 100.0,
                                        alignment: Alignment.topCenter,
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10.0, horizontal: 10.0),
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
                                                padding: const EdgeInsets.only(
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
                                                    color: Colors.orangeAccent,
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
                                    borderRadius: BorderRadius.circular(20.0),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(7, 5),
                                          blurRadius: 12.0,
                                          spreadRadius: 0.8)
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 45,
                                  height: 45,
                                  margin:
                                      EdgeInsets.only(top: 170.0, left: 115.0),
                                  child: Icon(
                                    Icons.shopping_cart_outlined,
                                    size: 24.0,
                                    color: Colors.white,
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(12.0),
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
                              ],
                            ),
                            Container(
                              width: 5.0,
                              height: 230.0,
                            ),
                            Stack(
                              children: <Widget>[
                                Container(
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        child: Image(
                                          image: NetworkImage(
                                              'https://live.staticflickr.com/7312/9596285731_a5b800d308_z.jpg'),
                                          height: 80.0,
                                        ),
                                        height: 100.0,
                                        alignment: Alignment.topCenter,
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10.0, horizontal: 10.0),
                                      ),
                                      Container(
                                        width: double.infinity,
                                        margin: EdgeInsets.symmetric(
                                            vertical: 5.0, horizontal: 2.0),
                                        child: Text("Necklace",
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
                                                padding: const EdgeInsets.only(
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
                                                    color: Colors.orangeAccent,
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
                                    borderRadius: BorderRadius.circular(20.0),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(7, 5),
                                          blurRadius: 12.0,
                                          spreadRadius: 0.8)
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 45,
                                  height: 45,
                                  margin:
                                      EdgeInsets.only(top: 170.0, left: 115.0),
                                  child: Icon(
                                    Icons.shopping_cart_outlined,
                                    size: 24.0,
                                    color: Colors.white,
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(12.0),
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
                              ],
                            ),
                            Container(
                              width: 5.0,
                              height: 230.0,
                            ),
                            Stack(
                              children: <Widget>[
                                Container(
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
                                            vertical: 10.0, horizontal: 10.0),
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
                                                padding: const EdgeInsets.only(
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
                                                    color: Colors.orangeAccent,
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
                                    borderRadius: BorderRadius.circular(20.0),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(7, 5),
                                          blurRadius: 12.0,
                                          spreadRadius: 0.8)
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 45,
                                  height: 45,
                                  margin:
                                      EdgeInsets.only(top: 170.0, left: 115.0),
                                  child: Icon(
                                    Icons.shopping_cart_outlined,
                                    size: 24.0,
                                    color: Colors.white,
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(12.0),
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
                              ],
                            ),
                            Container(
                              width: 5.0,
                              height: 230.0,
                            ),
                            Stack(
                              children: <Widget>[
                                Container(
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
                                            vertical: 10.0, horizontal: 10.0),
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
                                                padding: const EdgeInsets.only(
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
                                                    color: Colors.orangeAccent,
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
                                    borderRadius: BorderRadius.circular(20.0),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(7, 5),
                                          blurRadius: 12.0,
                                          spreadRadius: 0.8)
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 45,
                                  height: 45,
                                  margin:
                                      EdgeInsets.only(top: 170.0, left: 115.0),
                                  child: Icon(
                                    Icons.shopping_cart_outlined,
                                    size: 24.0,
                                    color: Colors.white,
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(12.0),
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
                              ],
                            ),
                            Container(
                              width: 5.0,
                              height: 230.0,
                            ),
                            Stack(
                              children: <Widget>[
                                Container(
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
                                            vertical: 10.0, horizontal: 10.0),
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
                                                padding: const EdgeInsets.only(
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
                                                    color: Colors.orangeAccent,
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
                                    borderRadius: BorderRadius.circular(20.0),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(7, 5),
                                          blurRadius: 12.0,
                                          spreadRadius: 0.8)
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 45,
                                  height: 45,
                                  margin:
                                      EdgeInsets.only(top: 170.0, left: 115.0),
                                  child: Icon(
                                    Icons.shopping_cart_outlined,
                                    size: 24.0,
                                    color: Colors.white,
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(12.0),
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
                              ],
                            ),
                            Container(
                              width: 5.0,
                              height: 230.0,
                            ),
                            Stack(
                              children: <Widget>[
                                Container(
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
                                            vertical: 10.0, horizontal: 10.0),
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
                                                padding: const EdgeInsets.only(
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
                                                    color: Colors.orangeAccent,
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
                                    borderRadius: BorderRadius.circular(20.0),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(7, 5),
                                          blurRadius: 12.0,
                                          spreadRadius: 0.8)
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 45,
                                  height: 45,
                                  margin:
                                      EdgeInsets.only(top: 170.0, left: 115.0),
                                  child: Icon(
                                    Icons.shopping_cart_outlined,
                                    size: 24.0,
                                    color: Colors.white,
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(12.0),
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
                              ],
                            ),
                            Container(
                              width: 5.0,
                              height: 230.0,
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: 5.0, right: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 70.0),
                          child: Text(
                            'Add to Cart',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 87.0),
                            child: Text(
                              'Checkout',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black87,
                              ),
                            )),
                      ],
                    ),
                  ),
                  height: 105,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 237, 217, 1.0),
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
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ShoppingCartPage(),
                  ),
                );
              },
              child: Container(
                width: 70.0,
                height: 70.0,
                margin: EdgeInsets.only(top: 666.0, left: 80.0),
                child: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.white,
                  size: 30.0,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [
                        Color.fromRGBO(255, 210, 43, 1.0),
                        Color.fromRGBO(255, 133, 3, 1.0)
                      ]),
                ),
              ),
            ),
            Container(
              width: 70.0,
              height: 70.0,
              margin: EdgeInsets.only(top: 666.0, left: 250.0),
              child: Icon(
                Icons.check_circle_outline_rounded,
                color: Colors.white,
                size: 30.0,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      Color.fromRGBO(255, 210, 43, 1.0),
                      Color.fromRGBO(255, 133, 3, 1.0)
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
