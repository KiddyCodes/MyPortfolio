import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Navbtn extends StatelessWidget {
  final text;
  final onPressed;
  final Color color;

  const Navbtn({Key key, this.text, this.onPressed, this.color = Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 30,
        width: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Color.fromARGB(255, 4, 39, 91))),
        child: GestureDetector(
          onTap: onPressed,
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.aBeeZee(
                  textStyle: TextStyle(color: Color.fromARGB(255, 4, 39, 91))),
            ),
          ),
        ),
        // borderSide: BorderSide(
        //   color: color,
        // ),

        // highlightedBorderColor: color,
      ),
    );
  }
}
