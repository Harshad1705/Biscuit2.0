import 'package:biscuit2/Models/post_temp.dart';
import 'package:flutter/material.dart';


class MyPost3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: 'randomUser',
      videoDescription: 'flutter tutorial',
      numberOfLikes: '1.2B',
      numberOfComments: '232',
      numberOfShares: '122',
      userPost: Container(
        color: Colors.blue[300],
      ),
    );
  }
}
