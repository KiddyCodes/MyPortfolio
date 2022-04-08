import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Navbtn extends StatelessWidget {
  final text;
  final onPressed;
  final Color color;

  const Navbtn({Key key, this.text, this.onPressed, this.color = Colors.green})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return FlatButton(
      child: Text(
        text,
        style: GoogleFonts.aBeeZee(textStyle: TextStyle(color: Colors.green)),
      ),
      // borderSide: BorderSide(
      //   color: color,
      // ),
      onPressed: onPressed,
      // highlightedBorderColor: color,
    );
  }
}
