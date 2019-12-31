import 'package:flutter/material.dart';

class WinnerCounter extends StatelessWidget {

  IconData icon;
  int counter;
  Color color;
  WinnerCounter({this.icon, this.counter, this.color});

   @override
  Widget build(BuildContext context) {
    return Container(
                  margin: EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(10.0),
                        child: Icon(
                          this.icon,
                          size: 60.0,
                          color: color,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        margin: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: Colors.white,
                        ),
                        child: Text(
                          this.counter.toString(),
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.black,
                          ),
                        )
                      ),
                    ],
                  ),
                );
  }
}