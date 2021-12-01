import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_hello/responsive_widget.dart';

class About extends StatelessWidget {
  const About({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 50,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey[200],
                        ),
                        child: Icon(
                          Icons.close,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Hero(
                    tag: 'avatar',
                    child: Container(
                      alignment: Alignment.topCenter,
                      child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          backgroundImage: NetworkImage(
                            "https://res.cloudinary.com/divineadiole/image/upload/v1598217573/mefour_bpda1c.jpg",
                          )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "About Me? 👀",
                    textScaleFactor: 1.2,
                    style: GoogleFonts.aBeeZee(
                        textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Well here's everything you need to know😊",
                    softWrap: true,
                    textAlign: TextAlign.center,
                    textScaleFactor: 1,
                    style: GoogleFonts.aBeeZee(
                        textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Text(
                    "My Stack",
                    textScaleFactor: 1.2,
                    style: GoogleFonts.aBeeZee(
                        textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "👇🏻",
                    textScaleFactor: 1.2,
                    style: GoogleFonts.aBeeZee(
                        textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 0, right: 10, top: 10),
                        child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            backgroundImage: NetworkImage(
                                'https://res.cloudinary.com/seeqzaza/image/upload/v1638311222/My%20portfolio/flutter_mjbhsx.png')),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 10, top: 10),
                          child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              backgroundImage: NetworkImage(
                                  'https://res.cloudinary.com/seeqzaza/image/upload/v1638311222/My%20portfolio/node-js_cf39py.png'))),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 10, top: 10),
                          child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              backgroundImage: NetworkImage(
                                  'https://res.cloudinary.com/seeqzaza/image/upload/v1638311728/My%20portfolio/java_dgmrlv.png'))),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    "Tools I work with",
                    textScaleFactor: 1.2,
                    style: GoogleFonts.aBeeZee(
                        textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "👇🏻",
                    textScaleFactor: 1.2,
                    style: GoogleFonts.aBeeZee(
                        textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 0, right: 10, top: 10),
                        child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            backgroundImage: NetworkImage(
                                'https://res.cloudinary.com/seeqzaza/image/upload/v1638311223/My%20portfolio/vscode_oohyn4.png')),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 10, top: 10),
                          child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              backgroundImage: NetworkImage(
                                  'https://res.cloudinary.com/seeqzaza/image/upload/v1638311223/My%20portfolio/git_xpk98v.png'))),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 10, top: 10),
                          child: Container(
                              height: 40,
                              child: Image.network(
                                  'https://res.cloudinary.com/seeqzaza/image/upload/v1638311222/My%20portfolio/heroku_abro0c.png'))),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 10, top: 10),
                          child: Container(
                              height: 40,
                              child: Image.network(
                                  'https://res.cloudinary.com/seeqzaza/image/upload/v1638311223/My%20portfolio/unity_qbc9xk.png'))),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 10, top: 10),
                          child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              backgroundImage: NetworkImage(
                                  'https://res.cloudinary.com/seeqzaza/image/upload/v1638315897/My%20portfolio/postman_r0wxoo.png'))),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    "Databases I work with",
                    textScaleFactor: 1.2,
                    style: GoogleFonts.aBeeZee(
                        textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "👇🏻",
                    textScaleFactor: 1.2,
                    style: GoogleFonts.aBeeZee(
                        textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 0, right: 10, top: 10),
                        child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            backgroundImage: NetworkImage(
                                'https://res.cloudinary.com/seeqzaza/image/upload/v1638315987/My%20portfolio/firebase_hz0voz.png')),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 10, top: 10),
                          child: Container(
                              height: 40,
                              child: Image.network(
                                  'https://res.cloudinary.com/seeqzaza/image/upload/v1638311222/My%20portfolio/mongodb_d9o5cg.png'))),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 10, top: 10),
                          child: Container(
                              height: 40,
                              child: Image.network(
                                  'https://res.cloudinary.com/seeqzaza/image/upload/v1638316088/My%20portfolio/postgresql_k6hdh8.png'))),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    "Operating Systems I work with",
                    textScaleFactor: 1.2,
                    style: GoogleFonts.aBeeZee(
                        textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "👇🏻",
                    textScaleFactor: 1.2,
                    style: GoogleFonts.aBeeZee(
                        textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 0, right: 10, top: 10),
                        child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            backgroundImage: NetworkImage(
                                'https://res.cloudinary.com/seeqzaza/image/upload/v1638311223/My%20portfolio/ubuntu_macnoh.png')),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                            right: 10,
                            top: 10,
                          ),
                          child: Container(
                              height: 40,
                              child: Image.network(
                                  'https://res.cloudinary.com/seeqzaza/image/upload/v1638311223/My%20portfolio/windows_lm3ozo.png'))),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
