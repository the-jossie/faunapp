import 'package:flutter/material.dart';

class AppBackground extends StatelessWidget {
  final Widget? body;
  final AppBar? appBar;
  final Drawer? drawer;

  const AppBackground({this.body, this.appBar, this.drawer, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      drawer: drawer,
      body: Stack(
        children: <Widget>[
          Image.asset(
            "assets/images/splash_bg.png",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          body ?? Container(),
        ],
      ),
    );
  }
}
