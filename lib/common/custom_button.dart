import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String content;
  final Function onPressed;

  CustomButton({@required this.content, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
        content,
        style: TextStyle(
          fontSize: 24.0,
        ),
      ),
      color: Colors.greenAccent,
      onPressed: onPressed,
    );
  }
}
