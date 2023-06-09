import 'dart:ui';
import 'package:biscuit2/Pages/Auth/otp.dart';
import 'package:biscuit2/Pages/Auth/register.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 12,
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 4,
            width: MediaQuery.of(context).size.width / 1.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 35.0, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      ' Hello Again ! ',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.alata(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 30,
                  ),
                  Text(
                    "Welcome back you've been missed!",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.alata(
                      fontWeight: FontWeight.w100,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 30,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 12,
            width: MediaQuery.of(context).size.width / 1.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white12,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                children: [
                  Text(
                    "E-mail",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.alata(
                      fontWeight: FontWeight.w100,
                      color: Colors.white30,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 40,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 12,
            width: MediaQuery.of(context).size.width / 1.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white12,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Password",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.alata(
                      fontWeight: FontWeight.w100,
                      color: Colors.white30,
                      fontSize: 22,
                    ),
                  ),
                  Icon(
                    Icons.remove_red_eye_outlined,
                    color: Colors.white30,
                  )
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 12,
            width: MediaQuery.of(context).size.width / 1.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(),
                  Text(
                    "Recovery Password",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.alata(
                      fontWeight: FontWeight.w100,
                      color: Colors.white54,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  curve: Curves.linear,
                  type: PageTransitionType.bottomToTop,
                  child: Otp(),
                ),
              );
            },
            child: Container(
              height: MediaQuery.of(context).size.height / 12,
              width: MediaQuery.of(context).size.width / 1.1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffdd904a),
              ),
              child: Center(
                child: Text(
                  "Sign In",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.alata(
                    fontWeight: FontWeight.w100,
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 12,
            width: MediaQuery.of(context).size.width / 1.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                "Or continue with",
                textAlign: TextAlign.center,
                style: GoogleFonts.alata(
                  fontWeight: FontWeight.w100,
                  color: Colors.white54,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 12,
            width: MediaQuery.of(context).size.width / 1.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width / 5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white12,
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width / 5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white12,
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width / 5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white12,
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                PageTransition(
                  curve: Curves.linear,
                  type: PageTransitionType.bottomToTop,
                  child: Register(),
                ),
              );
            },
            child: Container(
              height: MediaQuery.of(context).size.height / 12,
              width: MediaQuery.of(context).size.width / 1.1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  "Not a member ?",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.alata(
                    fontWeight: FontWeight.w100,
                    color: Colors.blue,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
