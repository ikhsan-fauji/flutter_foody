import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  final child;
  final double verticalPadding;
  final double horizontalPadding;
  final double borderWidth;
  final Color borderColor;

  const TextContainer({
    Key key,
    this.child, this.verticalPadding = 0, this.horizontalPadding = 0, this.borderWidth = 0, this.borderColor = Colors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: verticalPadding),
      child: child,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: borderWidth, color: borderColor)),
      ),
    );
  }
}