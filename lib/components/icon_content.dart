import 'package:flutter/material.dart';
import 'package:xox_game/utilities/constants.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String label;

  IconContent({this.icon,this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          this.icon,
          size: iconContentSize,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          this.label, style: iconLabelTextStyle,
        )
      ],
    );
  }
}