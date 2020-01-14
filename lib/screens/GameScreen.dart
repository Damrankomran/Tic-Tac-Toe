import 'dart:math';

import 'package:flutter/material.dart';
import 'package:xox_game/components/custom_dialog.dart';
import 'package:xox_game/components/game_button.dart';
import 'package:xox_game/components/winner_counter.dart';
import 'package:xox_game/utilities/constants.dart';

class GameScreen extends StatefulWidget {

  final String gameType;

  GameScreen({this.gameType});

  @override
  _GameScreenState createState() => new _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {


  List<GameButton> buttonList;
  var player1;
  var player2;
  var activePlayer;
  var winnerX = 0;
  var winnerY = 0;

  @override
  void initState() {
    super.initState();
    buttonList = createButton();

  }

  List<GameButton> createButton() {
    player1 = new List();
    player2 = new List();
    activePlayer = 1;

    var gameButtons = <GameButton>[
      new GameButton(id: 1),
      new GameButton(id: 2),
      new GameButton(id: 3),
      new GameButton(id: 4),
      new GameButton(id: 5),
      new GameButton(id: 6),
      new GameButton(id: 7),
      new GameButton(id: 8),
      new GameButton(id: 9),
    ];
    return gameButtons;
  }

  void clickButton(GameButton button){
    setState(() {
      if(activePlayer == 1){
        button.text = "X";
        button.color = Colors.red;
        activePlayer = 2;
        player1.add(button.id);
      }
      else{
        button.text = "O";
        button.color = Colors.green;
        activePlayer = 1;
        player2.add(button.id);
      }
      button.enable = false;
      int winner = checkWinner();

      if (winner == -1) {
        if (buttonList.every((p) => p.text != "")) {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (_) => new CustomDialog("Berabere", "Yeniden başlamak için 'Yeniden Başla' butonuna tıklayın!", resetGame)
          );
        }
        else {
          if(widget.gameType == "Tek Kişilik" && activePlayer == 2){
            computerPlay();
          }

        }
      }
    });

  }

  void computerPlay() {
    //Boş olan buttonları tutacak olan liste
    var emptyCell = new List(); 
    
    for(int i = 1 ; i <= 9 ; i++){
      //Player1 ve Player2 listelerinde olmayan id'leri emptyCell'in içine atıyoruz.
      if(! (player1.contains(i) || player2.contains(i)) ){
        emptyCell.add(i); 
      }
    }

    /*örn: 
      emptyCell[0] --> 3 id'li button var
      emptyCell[1] --> 7 id'li button var
      vs..
    */
    //0 ile emptyCell'in boyutundan 1 eksiği aralığında random bir sayı üreticez.
    var random = new Random();
    var randomIndex = random.nextInt(emptyCell.length-1);

    var buttonID = emptyCell[randomIndex];

    int i = buttonList.indexWhere((p)=> p.id == buttonID);

    clickButton(buttonList[i]);
  }

  void resetGame() {
    if (Navigator.canPop(context)) Navigator.pop(context);
    setState(() {
      buttonList = createButton();
    });
  }

  void resetArea(){
    setState(() {
      buttonList = createButton();
      winnerX = 0;
      winnerY = 0;
    });
  }

  int checkWinner() {
    var winner = -1;
    if (player1.contains(1) && player1.contains(2) && player1.contains(3)) {
      winner = 1;
    }
    if (player2.contains(1) && player2.contains(2) && player2.contains(3)) {
      winner = 2;
    }

    // row 2
    if (player1.contains(4) && player1.contains(5) && player1.contains(6)) {
      winner = 1;
    }
    if (player2.contains(4) && player2.contains(5) && player2.contains(6)) {
      winner = 2;
    }

    // row 3
    if (player1.contains(7) && player1.contains(8) && player1.contains(9)) {
      winner = 1;
    }
    if (player2.contains(7) && player2.contains(8) && player2.contains(9)) {
      winner = 2;
    }

    // col 1
    if (player1.contains(1) && player1.contains(4) && player1.contains(7)) {
      winner = 1;
    }
    if (player2.contains(1) && player2.contains(4) && player2.contains(7)) {
      winner = 2;
    }

    // col 2
    if (player1.contains(2) && player1.contains(5) && player1.contains(8)) {
      winner = 1;
    }
    if (player2.contains(2) && player2.contains(5) && player2.contains(8)) {
      winner = 2;
    }

    // col 3
    if (player1.contains(3) && player1.contains(6) && player1.contains(9)) {
      winner = 1;
    }
    if (player2.contains(3) && player2.contains(6) && player2.contains(9)) {
      winner = 2;
    }
    
    if (player1.contains(1) && player1.contains(5) && player1.contains(9)) {
      winner = 1;
    }
    if (player2.contains(1) && player2.contains(5) && player2.contains(9)) {
      winner = 2;
    }

    if (player1.contains(3) && player1.contains(5) && player1.contains(7)) {
      winner = 1;
    }
    if (player2.contains(3) && player2.contains(5) && player2.contains(7)) {
      winner = 2;
    }

    if (winner != -1) {
      if (winner == 1) {
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (_) => new CustomDialog("X Kazandı", "Yeniden başlamak için 'Yeniden Başla' butonuna tıklayın!", resetGame)
        );
        for(var i = 0; i < buttonList.length; i++){
          buttonList[i].enable = false;
        }
        winnerX++;
      } else {
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (_) => new CustomDialog("O Kazandı", "Yeniden başlamak için 'Yeniden Başla' butonuna tıklayın!", resetGame)
        );
        for(var i = 0; i < buttonList.length; i++){
          buttonList[i].enable = false;
        }
        winnerY++;
      }
    }

    return winner;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text("Tic-Tac-Toe"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex:3,
            child: new GridView.builder(
              padding: gameAreaPadding,
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: kCrossAxisCount,
                childAspectRatio: kChildAspectRatio,
                crossAxisSpacing: kCrossAxisSpacing,
                mainAxisSpacing: kMainAxisSpacing
              ),
              itemCount: buttonList.length,
              itemBuilder: (context, i ) => new GameButton(
                id: i,
                text: buttonList[i].text,
                color: buttonList[i].color,
                onPress: buttonList[i].enable
                    ? () => clickButton(buttonList[i])
                    : null,
              ),
            ),
          ),
          Expanded(
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                WinnerCounter(
                  counter: winnerX,
                  icon: iconX,
                  color: winnerXColor,
                ),
                WinnerCounter(
                  counter: winnerY,
                  icon: iconY,
                  color: winnerYColor,
                )
              ],
            ), 
          ),
          
          RaisedButton(
            child: new Text(
              "Sıfırla",
              style: resetButtonTextStyle,
            ),
            color: resetButtonColor,
            padding: raisedButtonPadding,
            onPressed: resetArea,
          )
        ],
      ),
    );
  }

}