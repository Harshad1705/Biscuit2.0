import 'package:biscuit2/Models/post_temp.dart';
import 'package:flutter/material.dart';


class MyPost2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: 'zuckerberg',
      videoDescription: 'reels for days',
      numberOfLikes: '1.2M',
      numberOfComments: '232',
      numberOfShares: '122',
      userPost: Container(
        color: Colors.pink[300],
      ),
    );
  }
}
