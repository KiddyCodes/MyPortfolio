import 'package:flutter/material.dart';

class DivDev extends StatelessWidget {
  const DivDev({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Div.Dev",
        textScaleFactor: 2,
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),
      ),
      SizedBox(
        width: 5,
      ),
      AnimatedContainer(duration: Duration(seconds: 1),
      height: 8,
      width: 8,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.blue
      ),
      )
      ],
    );
  }
}