import 'package:flutter/material.dart';
import 'package:xox_game/utilities/constants.dart';

class SelectPlayerButton extends StatelessWidget {

  SelectPlayerButton({this.color, @required this.cardChild, this.onPress});

  final Color color;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: this.cardChild,
        margin: selectPlayerButtonMargin,
        height: selectPlayerButtonHeight,
        //height: MediaQuery.of(context).size.height * 0.25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: this.color,
        ),
      ),
    );
  }
}