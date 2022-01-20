import 'package:flutter/material.dart';
import 'package:geo_game/pages/navpages/games_page.dart';
import 'package:geo_game/pages/home_page.dart';
import 'package:geo_game/pages/navpages/learn_page.dart';
import 'package:geo_game/pages/navpages/search_page.dart';

class CountryPage extends StatefulWidget {
  const CountryPage({Key? key}) : super(key: key);
  static const routeName = '/player_screen';

  @override
  State<CountryPage> createState() => _CountryPageState();
}

class _CountryPageState extends State<CountryPage> {
  int currentIndex = 0;
  List pages = [
    const HomePage(),
    const GamePage(),
    const LearnPage(),
    const SearchPage(),
  ];

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(.5),
        showUnselectedLabels: true,
        elevation: 0,
        currentIndex: currentIndex,
        onTap: onTap,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.apps_sharp),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.games_sharp),
            label: 'Games',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.book_sharp),
            label: 'Learn',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.search_sharp),
            label: 'Search',
          ),
        ],
      ),
    );
  }
}
