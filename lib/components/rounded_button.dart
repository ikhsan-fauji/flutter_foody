import 'package:flutter/material.dart';
import 'package:futter_foody/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function onPress;
  final Color color, textColor;
  final double width;
  final double verticalMargin;
  final double borderRadius;
  final double verticalPadding;
  final double horizontalPadding;
  final double fontSize;

  const RoundedButton({
    Key key, this.text = '', this.onPress, this.color, this.textColor = Colors.white, this.width, this.verticalMargin, this.borderRadius, this.verticalPadding, this.horizontalPadding, this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: verticalMargin),
      width: size.width * width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: verticalPadding, horizontal: horizontalPadding),
          color: primaryCollor,
          onPressed: onPress,
          child: Text(
            text,
            style: TextStyle(color: textColor, fontSize: fontSize),
          ),
        ),
      ),
    );
  }
}
