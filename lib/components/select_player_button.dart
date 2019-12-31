import 'package:flutter/material.dart';

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
        margin: EdgeInsets.only(top: 0.0,left: 15.0,right: 15.0,bottom: 15.0),
        height: 200.0,
        //height: MediaQuery.of(context).size.height * 0.25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: this.color,
        ),
      ),
    );
  }
}