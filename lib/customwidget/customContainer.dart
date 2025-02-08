// custom_container.dart
import 'package:flutter/material.dart';
import 'customcolor.dart'; // Import the customcolor.dart file

class CustomContainer extends StatelessWidget {
  final Widget? child;
  final Text? text;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;
final BoxDecoration decoration;

  const CustomContainer({
    this.text,
    Key? key,
    this.child,
    this.width,
    this.height,
    this.padding,
    this.borderRadius,
     required this.decoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: height ?? 150.0, // Default height
      padding: padding ?? EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Color.fromARGB(0, 238, 238, 240),
        borderRadius: borderRadius ?? BorderRadius.circular(10.0),
      ),
      child: child,
    );
  }
}
