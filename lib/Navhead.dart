import 'dart:html' as html;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:world_hello/About.dart';
import 'package:world_hello/Kiddyspacer.dart';
import 'package:world_hello/Navigantionbtn.dart';
import 'package:world_hello/responsive_widget.dart';

import 'customDialouge.dart';

class NavHeader extends StatelessWidget {
  const NavHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: ResponsiveWidget.isSmallScreen(context)
            ? MainAxisAlignment.center
            : MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DivDev(),
//Spacing
          if (!ResponsiveWidget.isSmallScreen(context))
            Row(children: [
              Navbtn(
                  text: "About",
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => About()));
                  }),
              Navbtn(
                  text: "Resume",
                  onPressed: () {
                    html.window.open(
                        "https://drive.google.com/file/d/1YHWskSQRfKp0JFSrUCwiS5kgVU9w8rDe/view?usp=drivesd ",
                        "GDE");
                  }),
              Navbtn(
                  text: "Contact",
                  onPressed: () {
                    html.window.open("https://t.me/KIDDYkeans", "GDE");
                  }),
            ])
        ],
      ),
    );
  }
}
