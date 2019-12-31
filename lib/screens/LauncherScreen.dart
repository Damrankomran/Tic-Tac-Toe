import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:xox_game/screens/HomeScreen.dart';

class LauncherScreen extends StatefulWidget {
  @override
  _LauncherScreenState createState() => new _LauncherScreenState();
}

class _LauncherScreenState extends State<LauncherScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:  SplashScreen(
        seconds: 4,
        navigateAfterSeconds: new HomeScreen(),
        title: new Text('Welcome X O X Game',
          style: new TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0
          ),
        ),
        image: new Image.asset("assets/logo.png"),
        backgroundColor: Colors.black,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        onClick: ()=>print("Emre Aydin"),
        loaderColor: Colors.red
      )
    );
  }
}