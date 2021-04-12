import 'package:flutter/material.dart';
import 'package:huckle/const/colorCodes.dart';
import 'package:huckle/screens/chatList.dart';
import 'package:huckle/screens/loadingScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Huckle',
      theme: ThemeData(
        backgroundColor: kColorLightSurface,
        appBarTheme: AppBarTheme(
          backgroundColor: kColorLightSurface,
        ),
        scaffoldBackgroundColor: kColorLightSurface,
        primarySwatch: Colors.blueGrey,
        fontFamily: "Nexa",
      ),
      routes: {
        "/": (_) => LoadingScreen(),
        "/home": (_) => ChatList(title: "My Huckles"),
      },
    );
  }
}
