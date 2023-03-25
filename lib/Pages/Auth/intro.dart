import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'login.dart';
import 'register.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  State<Intro> createState() => _Intro();
}

class _Intro extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 40,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.transparent),
                    child: Container(),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 3.5,
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 35.0, vertical: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Text(
                              'Biscuit!',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.alata(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 35,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 19,
                          ),
                          Text(
                            'Empowering you to resize creative contant opportunities.',
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
                    height: MediaQuery.of(context).size.height / 18,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 10,
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white54, width: 2),
                      color: Colors.black12,
                    ),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                curve: Curves.linear,
                                type: PageTransitionType.bottomToTop,
                                child: Register(),
                              ),
                            );
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height / 10,
                            width: MediaQuery.of(context).size.width / 2.2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xffdd904a),
                            ),
                            child: Center(
                              child: Text(
                                'Register',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.alata(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
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
                                child: Login(),
                              ),
                            );
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height / 10,
                            width: MediaQuery.of(context).size.width / 2.5,
                            decoration: const BoxDecoration(
                              color: Colors.transparent,
                            ),
                            child: Center(
                              child: Text(
                                'Sign In',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.alata(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white54,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
 /**Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Image.asset(
                          "assets/imgbin-chocolate-chip-cookie-food-biscuits-emoji-cookie-bitten-chocolate-chips-illustration-pXzCDdptG1fDBDT3Ssw4LN9Pb__1_-removebg-preview.png"),
                    ),**/
