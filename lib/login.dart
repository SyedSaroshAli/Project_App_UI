import 'package:flutter/material.dart';
import "package:animated_switch/animated_switch.dart";

import 'signup.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image(
          image: AssetImage("assets/burj_khalifa.jpg"),
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.black,
            Colors.black.withOpacity(0.8),
            Colors.black.withOpacity(0.15),
            Colors.black.withOpacity(0.5),
          ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
        ),
        Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Login',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 70),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                    label: Text("Email Address"),
                    fillColor: Color(0xFFD8D8DD),
                    filled: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                    label: Text("Password"),
                    suffixIcon: Icon(Icons.visibility_off),
                    fillColor: Color(0xFFD8D8DD),
                    filled: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 19, top: 8, right: 19),
                child: Row(
                  children: [
                    AnimatedSwitch(
                      colorOff: Color(0xFFA09F99),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Remember me",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Spacer(),
                    Text("Forgot Password",
                        style: TextStyle(
                          color: Colors.grey,
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Signup()));
                },
                child: Container(
                  height: 60,
                  width: 450,
                  decoration: BoxDecoration(
                    color: Color(0xFF0172B2),
                  ),
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 19, right: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "-----------",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      "Or Login With",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "-----------",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Color(0xff484848),
                          borderRadius: BorderRadius.circular(5)),
                      child: Image.asset(
                        "assets/google.png",
                        height: 18,
                        width: 18,
                      )),
                  Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Color(0xff484848),
                          borderRadius: BorderRadius.circular(5)),
                      child: Image.asset(
                        "assets/apple.png",
                        height: 18,
                        width: 18,
                      )),
                  Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Color(0xff484848),
                          borderRadius: BorderRadius.circular(5)),
                      child: Image.asset(
                        "assets/facebook.png",
                        height: 18,
                        width: 18,
                      ))
                ],
              ),
              SizedBox(
                height: 130,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Text("Signup",
                      style: TextStyle(
                          color: Color(0xFF0172B2),
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                ],
              ),
            ],
          ),
        )
      ],
    ));
  }
}
