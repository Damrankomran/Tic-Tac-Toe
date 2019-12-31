import 'package:flutter/material.dart';
const ButtonColor = Color(0xFF1D1E33);
class Logo extends StatelessWidget{
  
  final String title;
  final ImageProvider image;

  Logo({this.title,this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
              color: ButtonColor,
              margin: EdgeInsets.only(top: 50.0,left: 15.0,right: 15.0,bottom:15.0),
              padding: EdgeInsets.all(15.0),
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Image(
                        image: this.image,
                    ),
                  ),
                  Text(
                    "Tic-Tac-Toe",
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 40.0,
                      color: Colors.white,
                    ),
                  )
                ],
              ) ,
            );
  }
}