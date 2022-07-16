import 'package:flutter/material.dart';

Widget post(String userImage, String userName, String postPic, String postTxt) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12.0),
    child: Container(
      height: 500.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 8.0),
                  width: 52.0,
                  height: 52.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    border: Border.all(color: Colors.pink, width: 2.0),
                    image: DecorationImage(
                      image: NetworkImage(userImage),
                    ),
                  ),
                ),
                Text(userName),
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                    alignment: Alignment.centerRight,
                    icon: Icon(
                      Icons.more_horiz,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Container(
              height: 300.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(
                  image: NetworkImage(postPic),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  color: Colors.black,
                  iconSize: 20.0,
                  icon: Icon(Icons.favorite_border),
                ),
                IconButton(
                  onPressed: () {},
                  color: Colors.black,
                  iconSize: 20.0,
                  icon: Icon(Icons.chat_bubble_outline),
                ),
                IconButton(
                  onPressed: () {},
                  color: Colors.black,
                  iconSize: 20.0,
                  icon: Icon(Icons.send),
                ),
              ],
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
                child: Row(
                  children: [
                    Text("62 Likes"),
                    SizedBox(width: 10.0),
                    Text("9 Comments"),
                  ],
                )),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 7.0),
                child: Text(postTxt)),
          ],
        ),
      ),
    ),
  );
}
