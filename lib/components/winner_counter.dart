import 'package:flutter/material.dart';
import 'package:xox_game/utilities/constants.dart';

class WinnerCounter extends StatelessWidget {
  IconData icon;
  int counter;
  Color color;
  WinnerCounter({this.icon, this.counter, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: counterContainerMargin,
      child: Row(
        children: <Widget>[
          Container(
            margin: counterIconContainerMargin,
            child: Icon(
              this.icon,
              size: counterIconSize,
              color: color,
            ),
          ),
          Container(
              padding: counterTextContainerPadding,
              margin: counterTextContainerMargin,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                color: Colors.white,
              ),
              child: Text(
                this.counter.toString(),
                style: counterTextStyle
              )),
        ],
      ),
    );
  }
}
