import 'dart:html' as html;


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:world_hello/DivDevspacer.dart';
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
        :MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DivDev(),
//Spacing
      if (!ResponsiveWidget.isSmallScreen(context))
      Row(
        children: [
          Navbtn(
            text: "Resume",
            onPressed: () {
               html.window.open(
                  "https://drive.google.com/file/d/1c39nUmaPN4OquDOsCcIbjUAXLtKWORBR/view?usp=sharing ",
                  "GDE");
            }
          ),
          Navbtn(
            text: "Contact",
            onPressed: () {
              html.window.open(
                  "https://t.me/DivdotDev",
                  "GDE");
            })
        ])
        ],
      ),
    );
  }
}
