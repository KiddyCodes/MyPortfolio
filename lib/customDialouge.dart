import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'dart:html' as html;


class CustomDialog extends StatelessWidget {
  final Image image;

  CustomDialog({
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Consts.padding),
      ),      
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }
}

dialogContent(BuildContext context) {
  return Stack(
    children: <Widget>[
      Container(
  padding: EdgeInsets.only(
    top: Consts.avatarRadius + Consts.padding,
    bottom: Consts.padding,
    left: Consts.padding,
    right: Consts.padding,
  ),
  margin: EdgeInsets.only(top: Consts.avatarRadius),
  decoration: new BoxDecoration(
    color: Colors.white,
    shape: BoxShape.rectangle,
    borderRadius: BorderRadius.circular(Consts.padding),
    boxShadow: [
      BoxShadow(
        color: Colors.black26,
        blurRadius: 10.0,
        offset: const Offset(0.0, 10.0),
      ),
    ],
  ),
  child: Column(
    mainAxisSize: MainAxisSize.min, // To make the card compact
    children: <Widget>[
      Text(
        "Contact Me",
        style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.w700,
        ),
      ),
     
      SizedBox(height: 24.0),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            child: FlatButton(
              color: Colors.lightGreen,
              onPressed: () {
                html.window.open(
                  "https://wa.me/qr/MD4ZJ66QPOQWI1",
                  "GDE");
                Navigator.of(context).pop(); // To close the dialog
              },
              child: Row(
                children: [
                  Text("WhatsApp", style: TextStyle(color: Colors.white),),
                  Icon(MdiIcons.whatsapp, color: Colors.white,)
                ],
              ),
            ),
          ),

        ],
      ),
    ],
  ),
),
      //...top circlular image part,
      Positioned(
                  left: Consts.padding,
                  right: Consts.padding,
                  child:CircleAvatar(
                  radius: Consts.avatarRadius,
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  child: Image.asset("mefour.jpg", fit:BoxFit.contain, height: 93,)
                ),
                ),
    ],
  );
}



class Consts {
  Consts._();

  static const double padding = 16.0;
  static const double avatarRadius = 66.0;
}