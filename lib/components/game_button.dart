import 'package:flutter/material.dart';

class GameButton extends StatelessWidget{

  Function onPress;
  int id;
  String text;
  Color color;
  bool enable;

  //Game Button class'ının constructor'ı
  GameButton({this.id,this.text = "",this.enable = true, this.color = Colors.grey, this.onPress});

  @override
  Widget build(BuildContext context) {
      return(
          SizedBox(
              width: 100.0,
              height: 100.0,
              child: RaisedButton(
                padding: EdgeInsets.all(10.0),
                color: this.color,
                disabledColor: this.color,
                child: Text(
                  this.text,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 80.0,
                      fontWeight: FontWeight.w200
                  ),
                ),
                onPressed: this.onPress,
              )
            )
      );
  }
}
