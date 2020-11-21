import 'package:craftBus/views/languagePage.dart';
import 'package:craftBus/views/publicProductPage.dart';
import 'package:craftBus/views/userAuthPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LanguagePage(),
      // home: UserAuthPage(),
    );
  }
}
