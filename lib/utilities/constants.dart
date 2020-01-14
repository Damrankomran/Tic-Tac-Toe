import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//Home Screen Constants
const Color gameTypeColor = Color(0xFF1D1E33);
const AssetImage appIcon = AssetImage('assets/logo.png');

//Logo Constants
const EdgeInsets logoContainerMargin =
    EdgeInsets.only(top: 50.0, left: 15.0, right: 15.0, bottom: 15.0);
const EdgeInsets logoContainerPadding = EdgeInsets.all(25.0);
const Color logoContainerColor = Color(0xFF1D1E33);
const TextStyle logoTitleStyle = TextStyle(
  fontFamily: 'Pacifico',
  fontSize: 40.0,
  color: Colors.white,
);

//Game Button Constants
const double buttonWidth = 100.0;
const double buttonHeight = 100.0;
const EdgeInsets buttonPadding = EdgeInsets.all(10.0);
const TextStyle buttonTextStyle =
    TextStyle(color: Colors.white, fontSize: 80.0, fontWeight: FontWeight.w200);

//Game Area Constants
const EdgeInsets gameAreaPadding = EdgeInsets.all(10.0);
const int kCrossAxisCount = 3;
const double kChildAspectRatio = 1.0;
const double kCrossAxisSpacing = 9.0;
const double kMainAxisSpacing = 9.0;

//User Icons Constants
const IconData iconX = FontAwesomeIcons.times;
const IconData iconY = FontAwesomeIcons.circle;
const Color winnerXColor = Colors.red;
const Color winnerYColor = Colors.green;

//Reset Button Constants
const EdgeInsets raisedButtonPadding = EdgeInsets.all(20.0);
const TextStyle resetButtonTextStyle =
    TextStyle(color: Colors.white, fontSize: 20.0);
const Color resetButtonColor = Colors.purple;

//customDialog Constants
const Color dialogButtonColor = Colors.white;
const TextStyle dialogButtonTextStyle =
    TextStyle(color: Colors.blue, fontSize: 20.0, fontWeight: FontWeight.w700);

//Icon Content Constants
const double iconContentSize = 80.0;
const TextStyle iconLabelTextStyle =
    TextStyle(fontSize: 20.0, color: Color(0xFF8D8E98));

//WinnerCounter Constansts
const EdgeInsets counterContainerMargin = EdgeInsets.all(10.0);

const EdgeInsets counterIconContainerMargin = EdgeInsets.all(10.0);
const double counterIconSize = 60.0;

const EdgeInsets counterTextContainerMargin = EdgeInsets.all(10.0);
const EdgeInsets counterTextContainerPadding = EdgeInsets.all(10.0);

const TextStyle counterTextStyle = TextStyle(
  fontSize: 30.0,
  color: Colors.black,
);

//Select player button Constants
const EdgeInsets selectPlayerButtonMargin = EdgeInsets.only(top: 0.0,left: 15.0,right: 15.0,bottom: 15.0);
const double selectPlayerButtonHeight = 200.0;