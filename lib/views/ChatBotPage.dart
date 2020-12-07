import 'dart:convert';

import 'package:bubble/bubble.dart';
import 'package:craftBus/constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ChatBotPage extends StatefulWidget {
  ChatBotPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _ChatBotPageState createState() => _ChatBotPageState();
}

class _ChatBotPageState extends State<ChatBotPage> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();
  List<String> _data = [];
  // static const String BOT_URL = "https://supercodebot.herokuapp.com/bot";
  static const String BOT_URL = "http://10.0.2.2:5000/bot";

  TextEditingController _queryController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          AnimatedList(
            padding: EdgeInsets.only(bottom: 50.0, top: 100.0),
            key: _listKey,
            initialItemCount: _data.length,
            itemBuilder:
                (BuildContext context, int index, Animation animation) {
              return _buildItem(_data[index], animation, index);
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.only(left: 10.0),
              width: MediaQuery.of(context).size.width,
              height: 40.0,
              color: Colors.white,
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.message,
                    color: Colors.orangeAccent,
                  ),
                  hintText: "Talk to me :)",
                ),
                controller: _queryController,
                textInputAction: TextInputAction.send,
                onSubmitted: (msg) {
                  this._getResponse();
                },
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: ChatBotAppBar(
              name: "Diana...",
            ),
          ),
        ],
      ),
    );
  }

  http.Client _getClient() {
    return http.Client();
  }

  void _getResponse() {
    if (_queryController.text.length > 0) {
      this._insertSingleItem(_queryController.text);
      var client = _getClient();
      try {
        client.post(
          BOT_URL,
          body: {"query": _queryController.text},
        )..then((response) {
            Map<String, dynamic> data = jsonDecode(response.body);
            _insertSingleItem(data['response'] + "<bot>");
          });
      } catch (e) {
        print("Failed -> $e");
      } finally {
        client.close();
        _queryController.clear();
      }
    }
  }

  void _insertSingleItem(String message) {
    _data.add(message);
    _listKey.currentState.insertItem(_data.length - 1);
  }

  Widget _buildItem(String item, Animation animation, int index) {
    bool mine = item.endsWith("<bot>");
    return SizeTransition(
      sizeFactor: animation,
      child: Padding(
        padding: EdgeInsets.only(top: 10),
        child: Container(
          alignment: mine ? Alignment.topLeft : Alignment.topRight,
          child: Bubble(
            child: Text(item.replaceAll("<bot>", "")),
            color: mine ? Colors.amber : Colors.orange,
            padding: BubbleEdges.all(10),
          ),
        ),
      ),
    );
  }
}
