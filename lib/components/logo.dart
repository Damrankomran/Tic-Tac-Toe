import 'package:flutter/material.dart';
import 'package:xox_game/utilities/constants.dart';

class Logo extends StatelessWidget {
  final String title;
  final ImageProvider image;

  Logo({this.title, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: logoContainerColor,
      margin: logoContainerMargin,
      padding: logoContainerPadding,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Image(
              image: this.image,
            ),
          ),
          Text("Tic-Tac-Toe", style: logoTitleStyle)
        ],
      ),
    );
  }
}
