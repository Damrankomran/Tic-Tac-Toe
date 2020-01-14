import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:xox_game/components//icon_content.dart';
import 'package:xox_game/components/logo.dart';
import 'package:xox_game/components/select_player_button.dart';
import 'package:xox_game/screens/GameScreen.dart';
import 'package:xox_game/utilities/constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Logo(
              image: appIcon,
              title: "X-O-X",
            )
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: SelectPlayerButton(
                    color: gameTypeColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.userAlt, label: 'Tek Kişilik',),
                    onPress: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => GameScreen(gameType: "Tek Kişilik")));
                    },
                  ),
                ),
                Expanded(
                  child: SelectPlayerButton(
                    color: gameTypeColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.userFriends, label: 'İki Oyuncu',),
                    onPress: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => GameScreen()));
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }


}