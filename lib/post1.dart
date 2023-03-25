import 'package:biscuit2/Models/post_temp.dart';
import 'package:flutter/material.dart';

class MyPost1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: 'Shivansh',
      videoDescription: 'sample',
      numberOfLikes: '1.2M',
      numberOfComments: '1232',
      numberOfShares: '122',
      userPost: Container(
        color: Colors.deepPurple[300],
      ),
    );
  }
}
