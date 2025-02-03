import 'package:flutter/material.dart';
import 'package:spotify_clone/screens/MainScreen.dart';
import 'package:spotify_clone/screens/premiumScreen.dart';
import 'package:spotify_clone/screens/searchScreen.dart';
import 'package:spotify_clone/screens/yourLibrary.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _selectedScreen = 0;
  void selectpage(int index) {
    setState(() {
      _selectedScreen = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = const MainScreen();
    if (_selectedScreen == 1) {
      activePage = const SearchScreen();
    }
    if (_selectedScreen == 2) {
      activePage = const YourLibrary();
    }
    if (_selectedScreen == 3) {
      activePage = const PremiumScreens();
    }
    return Scaffold(
      backgroundColor: Colors.black,
      extendBody: true,
      drawer: const Drawer(shape: ContinuousRectangleBorder()),
      body: activePage,
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          
          BottomNavigationBar(
            selectedItemColor: Colors.white,
            unselectedItemColor: const Color.fromARGB(131, 255, 255, 255),
            backgroundColor: const Color.fromARGB(174, 0, 0, 0),
            onTap: selectpage,
            currentIndex: _selectedScreen,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                ),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.library_music,
                  ),
                  label: 'Your Library'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_filled,
                  ),
                  label: 'Premium'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.diamond_outlined,
                  ),
                  label: 'Rewards'),
            ],
          ),
        ],
      ),
    );
  }
}
