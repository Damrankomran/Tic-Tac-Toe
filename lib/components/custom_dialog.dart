import 'package:flutter/material.dart';
import 'package:xox_game/utilities/constants.dart';

class CustomDialog extends StatelessWidget {
  final title;
  final content;
  final VoidCallback callback;
  final actionText;

  CustomDialog(this.title, this.content, this.callback,
      [this.actionText = "Yeniden Başla"]);

  @override
  Widget build(BuildContext context) {
    return new AlertDialog(
      title: new Text(title),
      content: SingleChildScrollView(
        child: Column(
          children: <Widget>[new Text(content)],
        ),
      ),
      actions: <Widget>[
        new FlatButton(
          onPressed: callback,
          color: dialogButtonColor,
          child: new Text(
            actionText,
            style: dialogButtonTextStyle,
          ),
        ),
      ],
    );
  }
}
