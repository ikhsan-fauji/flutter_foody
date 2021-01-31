import 'package:flutter/material.dart';

class RoundedTextContainer extends StatelessWidget {
  final child;
  final double verticalPadding;
  final double horizontalPadding;
  final double borderWidth;
  final Color borderColor;

  const RoundedTextContainer({
    Key key,
    this.child, this.verticalPadding = 0, this.horizontalPadding = 0, this.borderWidth = 0, this.borderColor = Colors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: verticalPadding),
      child: child,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0.8,
            blurRadius: 2,
            offset: Offset(0, 2),
          )
        ]
      ),
    );
  }
}