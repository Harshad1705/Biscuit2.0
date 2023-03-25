import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserSearchPage extends StatefulWidget {
  const UserSearchPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _UserSearchPage();
  }
}

class _UserSearchPage extends State<UserSearchPage> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 15,
                  width: MediaQuery.of(context).size.width / 1.1,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(40)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        Text(
                          'Search',
                          style: GoogleFonts.alata(
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 4,
                  color: Colors.orangeAccent,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2.8,
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 10,
                        width: MediaQuery.of(context).size.width / 1.05,
                        child: Row(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 15,
                              width: MediaQuery.of(context).size.width / 6.5,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(40)),

                            ),
                            SizedBox(width: MediaQuery.of(context).size.width / 20,),
                            Container(
                              height: MediaQuery.of(context).size.height / 15,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Shivansh',
                                    style: GoogleFonts.alata(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                      fontSize: 25,
                                    ),
                                  ),
                                  Text(
                                    'india',
                                    style: GoogleFonts.alata(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 4,
                        width: MediaQuery.of(context).size.width / 1.05,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 4,
                              width: MediaQuery.of(context).size.width / 3.2,
                              color: Colors.orangeAccent,
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height / 4,
                              width: MediaQuery.of(context).size.width / 3.2,
                              color: Colors.orangeAccent,
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height / 4,
                              width: MediaQuery.of(context).size.width / 3.2,
                              color: Colors.orangeAccent,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 10,
                        width: MediaQuery.of(context).size.width / 1.05,
                        child: Row(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 15,
                              width: MediaQuery.of(context).size.width / 6.5,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(40)),

                            ),
                            SizedBox(width: MediaQuery.of(context).size.width / 20,),
                            Container(
                              height: MediaQuery.of(context).size.height / 15,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Shivansh',
                                    style: GoogleFonts.alata(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                      fontSize: 25,
                                    ),
                                  ),
                                  Text(
                                    'india',
                                    style: GoogleFonts.alata(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 4,
                        width: MediaQuery.of(context).size.width / 1.05,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 4,
                              width: MediaQuery.of(context).size.width / 3.2,
                              color: Colors.orangeAccent,
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height / 4,
                              width: MediaQuery.of(context).size.width / 3.2,
                              color: Colors.orangeAccent,
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height / 4,
                              width: MediaQuery.of(context).size.width / 3.2,
                              color: Colors.orangeAccent,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
