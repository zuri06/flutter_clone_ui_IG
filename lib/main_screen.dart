import 'package:flutter/material.dart';
import 'package:ig_application/add/post_screen.dart';
import 'package:ig_application/home/home_screen.dart';
import 'package:ig_application/profile/profilescreen/profile_account.dart';
import 'package:ig_application/reels/reels_screen.dart';
import 'package:ig_application/search/search_screen.dart';

class MainScreen extends StatefulWidget{
  const MainScreen({super.key});

  @override
  State<StatefulWidget> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNavNar(),
    );
  }

  Widget _buildBody(){
    return IndexedStack(
      index: _selectedIndex,
      children: [
        HomeScreen(),
        SearchScreen(),
        PostScreen(),
        ReelsScreen(),
        ProfileScreenApp()
      ],
    );
  }

  int _selectedIndex = 0;

  Widget _buildBottomNavNar() {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Theme.of(context).colorScheme.primary,
      unselectedItemColor: Theme.of(context).colorScheme.primary,
      iconSize: 25,
      items: [
        BottomNavigationBarItem(
        icon: _selectedIndex == 0 ? Icon(Icons.home) : Icon(Icons.home_outlined),
        label: '',
        ),
        BottomNavigationBarItem(
          icon: _selectedIndex == 1 ? Icon(Icons.search) : Icon(Icons.search_outlined),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: _selectedIndex == 2 ? Icon(Icons.add_box) : Icon(Icons.add_box_outlined),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: _selectedIndex == 3 ? Icon(Icons.ondemand_video) : Icon(Icons.ondemand_video_outlined),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: _selectedIndex == 4 ? Icon(Icons.person) : Icon(Icons.person_outline),
          label: '',
        ),
      ],
    );
  }
}