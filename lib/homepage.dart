import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Hi ! David",
                    style: GoogleFonts.montserrat(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff2f2f2f),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Explore the world",
                    style: GoogleFonts.inter(
                      color: Color(0xff888888),
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 17),
              child: CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage("assets/user.png"),
              ),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                      width: 1,
                      color: Color(0xffd2d2d2),
                    )),
                hintText: "Search Places",
                suffixIcon: Icon(Icons.filter_list_outlined)),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 19),
          child: Row(
            children: [
              Text("Popular places",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff2f2f2f),
                  )),
              Spacer(),
              Text(
                "View all",
                style: GoogleFonts.roboto(
                  color: Color(0xff888888),
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 35,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Container(
                height: 54,
                width: 136,
                decoration: BoxDecoration(
                  color: Color(0xff2f2f2f),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text("Most Viewed",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      )),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Container(
                height: 54,
                width: 136,
                decoration: BoxDecoration(
                  color: Color(0xfffbfbfb),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text("Nearby",
                      style: TextStyle(
                        color: Color(0xffc5c5c5),
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      )),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Container(
                height: 54,
                width: 136,
                decoration: BoxDecoration(
                  color: Color(0xfffbfbfb),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text("Latest",
                      style: TextStyle(
                        color: Color(0xffc5c5c5),
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      )),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 270,
                    height: 360,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/image.png"))),
                  ),
                  SizedBox(width: 12),
                  Container(
                    width: 270,
                    height: 425,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/image2.png"))),
                    child: Image.asset("assets/image2.png"),
                  ),
                ]),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "assets/home.png",
              height: 23,
              width: 22.97,
            ),
            Image.asset(
              "assets/clock.png",
              height: 22,
              width: 22,
            ),
            Image.asset(
              "assets/heart2.png",
              height: 24,
              width: 21.54,
            ),
            Image.asset(
              "assets/user2.png",
              height: 23.7,
              width: 24,
            )
          ],
        )
      ],
    ));
  }
}
