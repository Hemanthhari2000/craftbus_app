import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class VendorAccountPage extends StatefulWidget {
  @override
  _VendorAccountPageState createState() => _VendorAccountPageState();
}

class _VendorAccountPageState extends State<VendorAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomAppBar(
            type: 'Vendor',
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            alignment: Alignment.centerLeft,
            height: 80,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hello! Rangaiya",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                CircleAvatar(
                  maxRadius: 35.0,
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1601965202403-31a8f85b8b76?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
                ),
              ],
            ),
          ),
          ButtonContainer(
            text: 'Add Products',
          ),
          ButtonContainer(
            text: 'My Products',
          ),
          ButtonContainer(
            text: 'My Deals',
          ),
          ButtonContainer(
            text: 'Check Stocks',
          ),
          ButtonContainer(
            text: 'My Income',
          ),
          ButtonContainer(
            text: 'Customer Support',
          ),
          ButtonContainer(
            text: 'Settings',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        // TODO: ADD BOT FUNCTIONALITY ON BUTTON CLICK (USER SHOULD BE NAVIGATED TO ANOTHER PAGE(CHATBOT PAGE.))
        onPressed: () {
          print('Action Button Pressed');
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
                Color.fromRGBO(255, 133, 3, 1.0)
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

// ignore: must_be_immutable
class ButtonContainer extends StatelessWidget {
  String text;
  ButtonContainer({this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1.0,
            color: Colors.grey,
          ),
        ),
      ),
      height: 60,
      width: MediaQuery.of(context).size.width - 20,
      child: Container(
        padding: EdgeInsets.only(left: 10.0),
        alignment: Alignment.centerLeft,
        child: Text(
          text,
          style: TextStyle(fontSize: 23.0),
        ),
      ),
    );
  }
}
