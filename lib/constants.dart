import 'package:flutter/material.dart';

final RichText kTitleText = RichText(
  text: TextSpan(
    text: "Craft ",
    style: TextStyle(
      fontFamily: 'Sacramento',
      fontSize: 34.0,
    ),
    children: [
      TextSpan(
        text: "Bus",
        style: TextStyle(color: Colors.black, fontFamily: 'RozhaOne'),
      ),
    ],
  ),
);

class CustomAppBar extends StatelessWidget {
  final String type;
  CustomAppBar({this.type});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Color.fromRGBO(255, 210, 43, 1.0),
              Color.fromRGBO(255, 133, 3, 1.0),
            ]),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 20.0, right: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.white,
              ),
            ),
            kTitleText,
            Container(
              height: 30,
              width: 80,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Center(
                child: Text(
                  type,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
