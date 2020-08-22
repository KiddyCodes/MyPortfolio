import 'package:flutter/material.dart';
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
      appBar: AppBar(elevation:0.0,
      toolbarHeight: 35,
        backgroundColor: Colors.black,
        ),
        drawer: ResponsiveWidget.isSmallScreen(context) 
        ? Drawer(child: ListView(
          padding: const EdgeInsets.all(20),
          children: <Widget>[
          Navbtn(
            text: "Resume",
            onPressed: () {
               html.window.open(
                  "https://drive.google.com/file/d/1zrMaQ0b-ODDefnwwv6n1pepyZmXsqnBF/view?usp=sharing",
                  "GDE");
            }
          ),
          Navbtn(
            text: "Contact",
            onPressed: () {
            showDialog(
                 context: context,
                 builder: (BuildContext context) => CustomDialog(
                     ),
);
            }
          )
          ],
        ),
      )
     : null,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
              child: AnimatedPadding(
                padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.04), 
                duration: Duration(seconds: 1),
                          child: ResponsiveWidget(
                            largeScreen:  Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                NavHeader(),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height * 0.1
                                ),

                                 ProfileInfo(),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height * 0.14,
                                ),
                                MySocials(),
                 Container(
                alignment: Alignment.bottomRight,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  child: Image.asset("portpic.png", fit:BoxFit.contain, height: 70,)
                ),
        ),
                              ]
                          ),
            ),
      ),
      )
    ));
  }
}