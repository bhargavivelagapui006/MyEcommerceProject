import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class customNavigation extends StatefulWidget {
  const customNavigation({super.key});

  @override
  State<customNavigation> createState() => _customNavigationState();
}

class _customNavigationState extends State<customNavigation> {

var _bottomNavIndex;
 validate() {
     Fluttertoast.showToast(msg: "hello")
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body: Container(), //destination screen
   
   floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
   bottomNavigationBar: AnimatedBottomNavigationBar(
      icons: iconList,
      activeIndex: _bottomNavIndex,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.verySmoothEdge,
      leftCornerRadius: 32,
      rightCornerRadius: 32,
      onTap: (index) => setState(() => _bottomNavIndex = index),
      //other params
   ),
);
  }
}