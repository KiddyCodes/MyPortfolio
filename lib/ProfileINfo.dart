import 'package:flutter/material.dart';
import 'package:world_hello/responsive_widget.dart';
import 'dart:html' as html;

class ProfileInfo extends StatelessWidget {
  profileImage(context) => AnimatedContainer(
  height: ResponsiveWidget.isSmallScreen(context)
  ? MediaQuery.of(context).size.height*0.25
  :MediaQuery.of(context).size.width*0.25,
  width: ResponsiveWidget.isSmallScreen(context)
  ? MediaQuery.of(context).size.height*0.25
  : MediaQuery.of(context).size.width*0.25,
  decoration: BoxDecoration(
    backgroundBlendMode: BlendMode.luminosity,
    color: Colors.transparent,
    shape: BoxShape.circle,
    image: DecorationImage(
        image: AssetImage("mefour.jpg"), 
        alignment: Alignment.center,fit: BoxFit.cover
        ),
      ), duration: Duration(milliseconds: 30),
  );

  final profileData = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Hello! I am",
        textScaleFactor: 2,
        style: TextStyle(color:Colors.blue),
      ),
      Text(
        "Divine",
        style: TextStyle(
          color: Colors.blueAccent,
          fontWeight:FontWeight.bold,
          fontSize: 25
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        "I design/develop Mobile Applications.\n"
        "Experienced with Flutter, Node.Js and JAVA",
        softWrap: true,
        textScaleFactor: 1.5,
        style: TextStyle(color: Colors.blue)
      ),

      OutlineButton(
        onPressed: (){
           html.window.open(
                  "https://forms.gle/TaisdUc8P69fdXcA8",
                  "GDE");
        },
        borderSide: BorderSide(
          color: Colors.blue
        ),
        shape:  StadiumBorder(),
        child: Text("Hire me"),
        color: Colors.blue,
        padding: EdgeInsets.all(10),
        )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          profileImage(context),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.1
          ),
          profileData
        ]
      ),
      smallScreen: Column(
        crossAxisAlignment:CrossAxisAlignment.center,
        children:[
           profileImage(context),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.001
          ),
          profileData
        ]
      ),
    );
  }
}