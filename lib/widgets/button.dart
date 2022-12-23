import 'package:flutter/material.dart';

import '../config/size_config.dart';
import '../formatters/num.dart';

class FAButton extends StatelessWidget {
  final Widget child;
  final double? width;
  final double height;
  final double radius;
  final Color? color;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final VoidCallback onPressed;
  final List<BoxShadow>? boxShadow;
  final Border? border;

  const FAButton({
    Key? key,
    required this.child,
    required this.onPressed,
    this.width,
    this.height = 55.0,
    this.radius = 16,
    this.color,
    this.padding,
    this.margin,
    this.border,
    this.boxShadow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Container(
      width: width ?? 50.w,
      height: height,
      margin: margin,
      padding: padding,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: color ?? Theme.of(context).cardColor,
        border: border,
        boxShadow: boxShadow,
        image: const DecorationImage(
          image: AssetImage("assets/images/button_bg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          splashColor: Colors.transparent,
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}
