import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/constants.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget child;
  final Function onTap;

  ReusableCard({@required this.color, this.child, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: child,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kBorderRadius),
          color: color,
        ),
        margin: EdgeInsets.all(10.0),
      ),
    );
  }
}
