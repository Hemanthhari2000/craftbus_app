import 'package:craftBus/views/publicProductPage.dart';
import 'package:craftBus/views/userAuthPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectionPage extends StatelessWidget {
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
                  bottomRight: Radius.circular(250.0),
                  // bottomRight: Radius.circular(250.0),
                  topLeft: Radius.circular(250.0),
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
                  SelectionButtons(text: "CUSTOMER"),
                  SizedBox(height: 10.0),
                  SelectionButtons(text: "VENDOR"),
                ],
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_rounded),
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class SelectionButtons extends StatelessWidget {
  String text;
  SelectionButtons({this.text});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () {
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => PublicProductPage(
      //         type: text,
      //       ),
      //     ),
      //   );
      // },
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UserAuthPage(
              type: text,
            ),
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
