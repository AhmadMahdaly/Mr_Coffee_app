import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:mr_coffee/home_page/home_page.dart';
import 'package:mr_coffee/widgets/constans.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

int _selectedIndex = 0;
// //خاص بألوان ال
// // NAVIGATION_BAR
// int _currentIndex = 0;

class _NavBarState extends State<NavBar> {
  List<Widget> pages = [
    const HomePage(),
    const HomePage(),
    const HomePage(),
    const HomePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      // _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KTextColor,
      extendBody: true,
      body: pages.elementAt(_selectedIndex),
      //  SizedBox(
      //   height: MediaQuery.of(context).size.height,
      // ),
      bottomNavigationBar: CrystalNavigationBar(
        backgroundColor: KTextColor.withOpacity(
          0.6,
        ),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        height: 10,
        unselectedItemColor: Colors.white70,
        // indicatorColor: Colors.blue,
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.black.withOpacity(0.1),
        //     blurRadius: 4,
        //     spreadRadius: 4,
        //     offset: Offset(0, 10),
        //   ),
        // ],

        items: [
          /// Home
          CrystalNavigationBarItem(
            icon: IconlyBold.home,
            unselectedIcon: IconlyLight.home,
            selectedColor: Colors.white,
          ),

          /// Add
          CrystalNavigationBarItem(
            icon: IconlyBold.document,
            unselectedIcon: IconlyLight.document,
            selectedColor: Colors.white,
          ),

          /// Favourite
          CrystalNavigationBarItem(
            icon: IconlyBold.heart,
            unselectedIcon: IconlyLight.heart,
            selectedColor: Colors.red,
          ),

          /// Profile
          CrystalNavigationBarItem(
            icon: IconlyBold.category,
            unselectedIcon: IconlyLight.category,
            selectedColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
