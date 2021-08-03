import 'package:flutter/material.dart';

class Neumorphism extends StatelessWidget {
  final Widget child;
  final double width, height;
  final BorderRadius borderRadius;
  final bool isRounded;
  Neumorphism(
      {this.child, this.width, this.height, this.borderRadius, this.isRounded});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
      child: this.child,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: isRounded ? 100 : borderRadius,
        boxShadow: [
          BoxShadow(
              color: Colors.grey[600],
              offset: Offset(4, 4),
              blurRadius: 15,
              spreadRadius: 1),
          BoxShadow(
              color: Colors.white,
              offset: Offset(-4, -4),
              blurRadius: 15,
              spreadRadius: 1),
        ],
      ),
    );
  }
}
