import 'package:flutter/material.dart';
import 'package:world_hello/responsive_widget.dart';

class About extends StatelessWidget {
  const About({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
        body: Center(
          child: Text("This page Will tell you About me")
        ),
      ),
      
    );
  }
}