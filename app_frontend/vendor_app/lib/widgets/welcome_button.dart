import 'package:flutter/material.dart';

class InputBox extends StatelessWidget {
  final Color color;
  final Function onPressed;
  final String title;

  InputBox({this.color, this.onPressed, this.title});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      color: color,
      borderRadius: BorderRadius.circular(30.0),
      child: MaterialButton(
        onPressed: onPressed,
        minWidth: 200.0,
        height: 42.0,
        child: Text(
          title,
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
