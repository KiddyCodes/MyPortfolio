import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:world_hello/responsive_widget.dart';

class MySocials extends StatelessWidget {
  const MySocials({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
        largeScreen: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              FlatButton(
                onPressed: () {
                  html.window.open("https://github.com/KiddyCodes", "GDE");
                },
                color: Colors.white,
                child: Center(
                  child: Row(
                    children: [
                      Text(
                        "Github",
                        style: GoogleFonts.lemon(
                            textStyle: TextStyle(color: Colors.black)),
                      ),
                      Icon(MdiIcons.github, color: Colors.black)
                    ],
                  ),
                ),
              ),
              FlatButton(
                  onPressed: () {
                    html.window
                        .open("https://twitter.com/marvellousamad3", "GDE");
                  },
                  color: Colors.white,
                  child: Row(children: [
                    Text(
                      "Twitter",
                      style: GoogleFonts.lemon(
                          textStyle: TextStyle(color: Colors.blueAccent)),
                    ),
                    Icon(MdiIcons.twitter, color: Colors.blue)
                  ]))
            ]),
            Text(
              "KiddyCodes © 2021",
              style: TextStyle(
                  color: Color.fromARGB(255, 4, 39, 91),
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        smallScreen: Column(
          children: [
            Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              FlatButton(
                onPressed: () {
                  html.window.open("https://github.com/KiddyCodes", "GDE");
                },
                color: Colors.white,
                child: Center(
                  child: Row(
                    children: [
                      Text(
                        "Github",
                        style: GoogleFonts.lemon(
                            textStyle: TextStyle(color: Colors.black)),
                      ),
                      Icon(MdiIcons.github, color: Colors.black)
                    ],
                  ),
                ),
              ),
              FlatButton(
                  onPressed: () {
                    html.window
                        .open("https://twitter.com/marvellousamad3", "GDE");
                  },
                  color: Colors.white,
                  child: Row(children: [
                    Text(
                      "Twitter",
                      style: GoogleFonts.lemon(
                          textStyle: TextStyle(color: Colors.blueAccent)),
                    ),
                    Icon(MdiIcons.twitter, color: Colors.blue)
                  ]))
            ]),
            SizedBox(height: 50),
            Text(
              "KiddyCodes© 2022",
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            )
          ],
        ));
  }
}
