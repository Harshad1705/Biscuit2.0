import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'login.dart';
import 'otp.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _Register();
}

class _Register extends State<Register> {
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      ' Register !  ',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.alata(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 14,
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
                            "Name",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.alata(
                              fontWeight: FontWeight.w100,
                              color: Colors.white30,
                              fontSize: 22,
                            ),
                          ),
                          const SizedBox(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
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
                    const SizedBox(),
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
                    const Icon(
                      Icons.remove_red_eye_outlined,
                      color: Colors.white30,
                    )
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
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const SizedBox(),
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
                            "Confirm Password",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.alata(
                              fontWeight: FontWeight.w100,
                              color: Colors.white30,
                              fontSize: 22,
                            ),
                          ),
                          const Icon(
                            Icons.remove_red_eye_outlined,
                            color: Colors.white30,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 40,
            ),
            InkWell(
              onTap: (){
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
                  color: const Color(0xffdd904a),
                ),
                child: Center(
                  child: Text(
                    "Create account",
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
                    child: const Login(),
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
                    "Have a Account ?",
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
        ));
  }
}