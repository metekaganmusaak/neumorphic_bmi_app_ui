import 'package:flutter/material.dart';

class NeumorphismInner extends StatelessWidget {
  final Widget child;
  final double width, height;
  final BorderRadius borderRadius;
  NeumorphismInner({this.child, this.width, this.height, this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
      child: this.child,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: borderRadius,
        boxShadow: [
          BoxShadow(
              color: Colors.grey[700],
          ),
          BoxShadow(
              color: Colors.grey[300],
              blurRadius: -12,
              spreadRadius: 12
          ),
        ],
      ),
    );
  }
}
