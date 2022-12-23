import 'package:flutter/material.dart';

class AppBackground extends StatelessWidget {
  final Widget? scaffold;

  const AppBackground({this.scaffold, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "assets/images/splash_bg.png",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        scaffold ?? Container()
      ],
    );
  }
}
