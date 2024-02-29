import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFF0172B2),
            Color(0xFF001645),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Travel ",
                  style: GoogleFonts.lobster(
                    color: Color(0xFFFFFFFF),
                    fontSize: 44,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                Image.asset(
                  'assets/globe_icon.png',
                  width: 36,
                  height: 36,
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text("Find Your Dream",
                style: GoogleFonts.roboto(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFFFFFFF))),
            Text("Destination With Us",
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFFFFFFF),
                )),
          ],
        ),
      ),
    );
  }

  void toTheLoginPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  //initState Function
  @override
  void initState() {
    Future.delayed(Duration(seconds: 6), toTheLoginPage);
    super.initState();
  }
}
