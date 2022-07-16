import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/search.dart';
import 'package:instagram_clone/post.dart';
import 'package:instagram_clone/storyButton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: InstagramApp());
  }
}

class InstagramApp extends StatefulWidget {
  const InstagramApp({Key? key}) : super(key: key);

  @override
  State<InstagramApp> createState() => _InstagramAppState();
}

class _InstagramAppState extends State<InstagramApp> {
  @override
  List<String> userAvatar = [
    "https://randomuser.me/api/portraits/women/9.jpg",
    "https://randomuser.me/api/portraits/men/60.jpg",
    "https://randomuser.me/api/portraits/women/65.jpg",
    "https://randomuser.me/api/portraits/women/73.jpg",
    "https://randomuser.me/api/portraits/men/31.jpg",
    "https://randomuser.me/api/portraits/men/8.jpg",
    "https://randomuser.me/api/portraits/men/52.jpg",
    "https://randomuser.me/api/portraits/women/55.jpg"
  ];
  List<String> imagesUrl = [
    "https://www.aa.com.tr/tr/turkiye/guneyin-incisi-arsuz-tatilcileri-bekliyor/1205416"
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'Instagram',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
        ),
        leading: IconButton(
          onPressed: () {},
          color: Colors.black,
          icon: Icon(Icons.photo_camera),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            color: Colors.black,
            icon: Icon(Icons.send),
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Stories"),
                Text("Watch All"),
              ],
            ),
          ),
          Container(
            height: 150.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                storyButton(userAvatar[0], "Lyla"),
                storyButton(userAvatar[1], "Lyla"),
                storyButton(userAvatar[2], "Lyla"),
                storyButton(userAvatar[3], "Lyla"),
                storyButton(userAvatar[4], "Lyla"),
                storyButton(userAvatar[5], "Lyla"),
                storyButton(userAvatar[6], "Lyla"),
                storyButton(userAvatar[7], "Lyla"),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          post(userAvatar[0], "Emre", imagesUrl[0], "Arsuz / Hatay"),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => searchPage(),
                  ),
                );
              },
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => searchPage(),
                  ),
                );
              },
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.video_call),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => searchPage(),
                  ),
                );
              },
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.shop_sharp),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => searchPage(),
                  ),
                );
              },
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => searchPage(),
                  ),
                );
              },
            ),
            label: 'Home',
          ),
        ],
      ),
    );
  }
}
