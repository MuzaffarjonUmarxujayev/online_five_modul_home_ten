import 'package:flutter/material.dart';
import 'feed_page.dart';

class HomePage extends StatefulWidget {
  static const id = "/instagram_page";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _pages = const[
    FeedPage(),
    FeedPage(),
    FeedPage(),
    FeedPage(),
    FeedPage(),
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        brightness: Brightness.light,
        centerTitle: true,
        title: const Text(
          "Instagram",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.camera_alt_outlined,
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.live_tv_rounded,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.send,
              color: Colors.white,
            ),
          ),
        ],
      ),

      body: _pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (i){
          setState(() {
            currentPage = i;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label:"Feed",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label:"Search",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined),
              label: "Upload",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: "Likes",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: "Account"
          ),
        ],
      ),
    );
  }
}