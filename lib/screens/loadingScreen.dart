import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const spinkit = SpinKitRing(
      color: Color(0xfff6f7f8),
      size: 50.0,
    );

    Future.delayed(Duration(milliseconds: 3000), () {
      try {
        Navigator.pushNamedAndRemoveUntil(context, "/home", (route) => false);
      } catch (e) {
        print(e);
      }
    });

    return Scaffold(
      backgroundColor: Color(0xff0d5888),
      body: Container(child: spinkit),
    );
  }
}
