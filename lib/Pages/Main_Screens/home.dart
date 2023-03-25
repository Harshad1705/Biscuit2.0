import 'package:biscuit2/Post2.dart';
import 'package:biscuit2/post1.dart';
import 'package:biscuit2/post3.dart';
import 'package:flutter/material.dart';

class UserHomePage extends StatelessWidget {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: [
          MyPost1(),
          MyPost2(),
          MyPost3(),
        ],
      ),
    );
  }
}
