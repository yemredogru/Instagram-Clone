import 'package:flutter/material.dart';
import 'package:instagram_clone/constant/search_json.dart';
import 'package:instagram_clone/main.dart';
import 'package:instagram_clone/pages/reels.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  int _selectedIndex = 1;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return getBody();
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SafeArea(
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: size.width - 30,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.white.withOpacity(0.3),
                          )),
                      style: TextStyle(color: Colors.white.withOpacity(0.3)),
                      cursorColor: Colors.white.withOpacity(0.3),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 15,
            ),
            Wrap(
              spacing: 1,
              runSpacing: 1,
              children: List.generate(searchImages.length, (index) {
                return Container(
                  width: (size.width - 3) / 3,
                  height: (size.width - 3) / 3,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(searchImages[index]),
                          fit: BoxFit.cover)),
                );
              }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => InstagramApp(),
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
                    builder: (context) => SearchPage(),
                  ),
                );
              },
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.video_call),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ReelsPage(),
                  ),
                );
              },
            ),
            label: 'Reels',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.shop_sharp),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SearchPage(),
                  ),
                );
              },
            ),
            label: 'Market',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SearchPage(),
                  ),
                );
              },
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
