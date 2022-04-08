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
                        "http://site-7tmxq8p4.websitecdn.com/uploads/a29e6e7bc25b448ba481f690e9b482d4.pdf/My%20CV?v=0 ",
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
