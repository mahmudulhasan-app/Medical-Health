import 'package:doctor/Screen/Home_Sreen.dart';
import 'package:doctor/Screen/Schedule_screen.dart';
import 'package:doctor/Screen/Settings_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Screen/Messeges_screen.dart';

class Navbarroots extends StatefulWidget{
  @override
  State<Navbarroots> createState() => _NavbarrootsState();
}

class _NavbarrootsState extends State<Navbarroots> {
  int _selectedIndex=0;
  final _screen = [
    // Home screen
    HomeScreen(),
    // Messages screen
    MessagesScreen(),
    // Schedule screen
    ScheduleScreen(),
    // Settings screen
    SettingScreen(),

  ];

  @override
  Widget build(BuildContext context) {
return Scaffold(
  backgroundColor: Colors.white,
  body: _screen[_selectedIndex],
  bottomNavigationBar: Container(
    height: 80,
    child: BottomNavigationBar(
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.deepPurpleAccent,
      unselectedItemColor: Colors.black26,
      selectedLabelStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
      ),
      currentIndex: _selectedIndex,
      onTap: (index){
        setState(() {
          _selectedIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_filled),
          label: "Home",
        ),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble_text_fill),
          label: "Messages",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.calendar_month),
          label: "Schedule",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.settings),
          label: "Settings",
        ),
    ],
    ),
  ),

);
  }
}
