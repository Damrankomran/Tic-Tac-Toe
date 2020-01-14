import 'package:flutter/material.dart';
import 'package:xox_game/utilities/constants.dart';

class GameButton extends StatelessWidget{

  Function onPress;
  int id;
  String text;
  Color color;
  bool enable;
  
  GameButton({this.id,this.text = "",this.enable = true, this.color = Colors.grey, this.onPress});

  @override
  Widget build(BuildContext context) {
      return(
          SizedBox(
              width: buttonWidth,
              height: buttonHeight,
              child: RaisedButton(
                padding: buttonPadding,
                color: this.color,
                disabledColor: this.color,
                child: Text(
                  this.text,
                  style: buttonTextStyle
                ),
                onPressed: this.onPress,
              )
            )
      );
  }
}
