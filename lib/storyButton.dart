import 'package:flutter/material.dart';

Widget storyButton(String userImage, String userName) {
  return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        children: [
          Container(
            width: 36.0,
            height: 36.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              border: Border.all(color: Colors.pink, width: 2.0),
              image: DecorationImage(
                image: NetworkImage(userImage),
              ),
            ),
          ),
          SizedBox(height: 5.0),
          Text(
            userName,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
        ],
      ));
}
