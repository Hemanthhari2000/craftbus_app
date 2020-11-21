import 'package:craftBus/views/selectionPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LanguagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromRGBO(243, 218, 14, 1.0),
                    Color.fromRGBO(255, 133, 3, 1.0),
                  ]),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 600,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(250.0),
                  // bottomRight: Radius.circular(250.0),
                  topRight: Radius.circular(250.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 25.0,
                    spreadRadius: 10.0,
                    offset: Offset(0, 20),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LanguageButtons(text: "தமிழ்"),
                  SizedBox(
                    height: 10.0,
                  ),
                  LanguageButtons(text: "ENGLISH"),
                  SizedBox(
                    height: 10.0,
                  ),
                  LanguageButtons(text: "हिंदी"),
                  SizedBox(
                    height: 10.0,
                  ),
                  LanguageButtons(text: "తెలుగు"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class LanguageButtons extends StatelessWidget {
  String text;
  LanguageButtons({this.text});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SelectionPage(),
          ),
        );
      },
      child: Container(
        height: 50.0,
        width: 150.0,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.all(
            Radius.circular(25.0),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
