import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_hello/About.dart';
import 'package:world_hello/ProfileINfo.dart';
import 'package:world_hello/responsive_widget.dart';
import 'dart:html' as html;

import 'Navhead.dart';
import 'Navigantionbtn.dart';
import 'customDialouge.dart';
import 'mysocials.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
        largeScreen: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text("Wizard's Portfolio",
                  style: GoogleFonts.aBeeZee(
                      textStyle: TextStyle(color: Colors.white, fontSize: 15))),
              elevation: 0.0,
              toolbarHeight: 35,
              backgroundColor: ResponsiveWidget.isSmallScreen(context)
                  ? Colors.black
                  : Colors.black,
            ),
            drawer: ResponsiveWidget.isSmallScreen(context)
                ? Drawer(
                    child: ListView(
                      padding: const EdgeInsets.all(20),
                      children: <Widget>[
                        Navbtn(
                            text: "About",
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => About()));
                            }),
                        Navbtn(
                            text: "Resume",
                            onPressed: () {
                              html.window.open(
                                  "https://drive.google.com/file/d/1YHWskSQRfKp0JFSrUCwiS5kgVU9w8rDe/view?usp=drivesdk",
                                  "GDE");
                            }),
                        Navbtn(
                            text: "Contact",
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) =>
                                    CustomDialog(),
                              );
                            })
                      ],
                    ),
                  )
                : null,
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: AnimatedPadding(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.height * 0.04),
                duration: Duration(seconds: 1),
                child: ResponsiveWidget(
                  largeScreen: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        NavHeader(),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.1),
                        ProfileInfo(),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.12,
                        ),
                        MySocials(),
                        Container(
                          alignment: Alignment.bottomRight,
                          child: CircleAvatar(
                              radius: 40,
                              backgroundColor: Colors.transparent,
                              foregroundColor: Colors.black,
                              backgroundImage: NetworkImage(
                                "https://res.cloudinary.com/dyjy3la3arsyttgdg/image/upload/v1649440086/IMG_20220408_184631_332_qx9nfo.png",
                                scale: 10,
                              )),
                        ),
                      ]),
                ),
              ),
            )));
  }
}
