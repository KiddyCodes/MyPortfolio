import 'package:flutter/material.dart';

class Navbtn extends StatelessWidget {
  final text;
  final onPressed;
  final Color color;
  
  const Navbtn({Key key, 
  this.text, 
  this.onPressed, 
  this.color = Colors.blue}) 
  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      child: Text(text),
      borderSide: BorderSide(
        color: color,
      ),
      onPressed: onPressed,
      highlightedBorderColor: color,
    );
  }
}