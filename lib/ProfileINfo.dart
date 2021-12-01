import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_hello/responsive_widget.dart';
import 'dart:html' as html;

class ProfileInfo extends StatefulWidget {
  @override
  State<ProfileInfo> createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo> {
  profileImage(context) => Hero(
        tag: 'avatar',
        child: AnimatedContainer(
          height: ResponsiveWidget.isSmallScreen(context)
              ? MediaQuery.of(context).size.height * 0.25
              : MediaQuery.of(context).size.width * 0.25,
          width: ResponsiveWidget.isSmallScreen(context)
              ? MediaQuery.of(context).size.height * 0.25
              : MediaQuery.of(context).size.width * 0.25,
          decoration: BoxDecoration(
            backgroundBlendMode: BlendMode.luminosity,
            color: Colors.transparent,
            shape: BoxShape.circle,
            image: DecorationImage(
                image: NetworkImage(
                    "https://res.cloudinary.com/divineadiole/image/upload/v1598217573/mefour_bpda1c.jpg"),
                alignment: Alignment.center,
                fit: BoxFit.cover),
          ),
          duration: Duration(milliseconds: 30),
        ),
      );

  profileData(context) => Column(
        crossAxisAlignment: ResponsiveWidget.isSmallScreen(context)
            ? CrossAxisAlignment.center
            : CrossAxisAlignment.start,
        children: [
          TyperAnimatedTextKit(
            isRepeatingAnimation: false,
            // totalRepeatCount: 1,
            speed: Duration(milliseconds: 100),
            text: ["Hello! I'm Divine"],
            textStyle: GoogleFonts.aBeeZee(
                textStyle: TextStyle(color: Colors.blue, fontSize: 25)),
            textAlign: ResponsiveWidget.isSmallScreen(context)
                ? TextAlign.center
                : TextAlign.justify,
          ),
          // Text(
          //   "Hello! I'm Divine",
          //   textScaleFactor: 2,
          //   style:
          //       GoogleFonts.aBeeZee(textStyle: TextStyle(color: Colors.blue)),
          // ),
          SizedBox(
            height: 0,
          ),
          TyperAnimatedTextKit(
            isRepeatingAnimation: false,
            // totalRepeatCount: 1,
            speed: Duration(milliseconds: 100),
            text: [
              "                      \n"
                  "I develop Mobile and Desktop Experiences\n"
                  "and Backend Solutions"
            ],
            textStyle: GoogleFonts.aBeeZee(
                textStyle: TextStyle(color: Colors.blue, fontSize: 20)),
            textAlign: ResponsiveWidget.isSmallScreen(context)
                ? TextAlign.center
                : TextAlign.justify,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text("My Stack:",
                textAlign: ResponsiveWidget.isSmallScreen(context)
                    ? TextAlign.center
                    : TextAlign.justify,
                softWrap: true,
                textScaleFactor: 1.5,
                style: GoogleFonts.aBeeZee(
                    textStyle: TextStyle(color: Colors.blue))),
          ),
          // TyperAnimatedTextKit(
          //   isRepeatingAnimation: false,
          //   // totalRepeatCount: 1,
          //   speed: Duration(milliseconds: 100),
          //   text: [
          //     "                                                                                       \n"
          //         "Stacks-"
          //   ],
          //   textStyle: GoogleFonts.aBeeZee(
          //       textStyle: TextStyle(color: Colors.blue, fontSize: 20)),
          //   textAlign: ResponsiveWidget.isSmallScreen(context)
          //       ? TextAlign.center
          //       : TextAlign.justify,
          // ),

          AnimatedOpacity(
            duration: Duration(milliseconds: 200),
            opacity: 1.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 0, right: 10, top: 10),
                  child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage: NetworkImage(
                          'https://res.cloudinary.com/seeqzaza/image/upload/v1638311222/My%20portfolio/flutter_mjbhsx.png')),
                ),
                Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 10, top: 10),
                    child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: NetworkImage(
                            'https://res.cloudinary.com/seeqzaza/image/upload/v1638311222/My%20portfolio/node-js_cf39py.png'))),
                Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: NetworkImage(
                            'https://res.cloudinary.com/seeqzaza/image/upload/v1638311728/My%20portfolio/java_dgmrlv.png'))),
              ],
            ),
          ),
          // OutlineButton(
          //   onPressed: () {
          //     html.window.open("https://forms.gle/TaisdUc8P69fdXcA8", "GDE");
          //   },
          //   borderSide: BorderSide(color: Colors.blue),
          //   shape: StadiumBorder(),
          //   child: Text("Hire me"),
          //   color: Colors.blue,
          //   padding: EdgeInsets.all(10),
          // )
        ],
      );

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen:
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        profileImage(context),
        SizedBox(height: MediaQuery.of(context).size.height * 0.1),
        profileData(context)
      ]),
      smallScreen:
          Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        profileImage(context),
        SizedBox(height: MediaQuery.of(context).size.height * 0.001),
        profileData(context)
      ]),
    );
  }
}
