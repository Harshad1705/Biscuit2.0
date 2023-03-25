import 'package:biscuit2/Pages/Main_Screens/homepage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';


class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  State<Otp> createState() => _Otp();
}

class _Otp extends State<Otp> {
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
            Container(
              height: MediaQuery.of(context).size.height / 12,
              width: MediaQuery.of(context).size.width / 1.1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  "Enter OTP",
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
            InkWell(
              onTap: () {},
              child: Container(
                height: MediaQuery.of(context).size.height / 12,
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    "Not Received OTP Yet ?",
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
            InkWell(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    PageTransition(
                      curve: Curves.linear,
                      type: PageTransitionType.bottomToTop,
                      child: HomePage(),
                    ),
                    (route) => false);
                //Navigator.push(
                //  context,
                //  PageTransition(
                //    curve: Curves.linear,
                //    type: PageTransitionType.bottomToTop,
                //    child: UserProfilePage(),
                //   ));
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
          ],
        ));
  }
}
