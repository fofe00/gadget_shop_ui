import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*3/5-60),
              padding: EdgeInsets.only(left: 10,right: 10),
              height:MediaQuery.of(context).size.height*2/5 ,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFF121003),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(3 0),
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                    Flexible(
                      child: Text(
                        "Let\'s Enjoy with Best Product",
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          fontSize: 28,
                          color: Colors.white
                        ),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        "am a lonfo mobile developer, i want to reproduce this interface in a mobile application",
                        maxLines: 3,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          fontSize: 20,
                          color: Colors.white
                        ),
                      ),
                    ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width*2/3,
                    decoration: BoxDecoration(
                      color: Colors.orange.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(
                      child: Text(
                        "Let\'s Go",
                        style: GoogleFonts.montserrat(
                          fontSize: 19,
                          color: Colors.white
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
