import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {

  void Function(int)? onTabChange;
   MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical:20),
      child:GNav(
        mainAxisAlignment: MainAxisAlignment.center,
        color:Colors.grey[400],
        activeColor: Colors.grey.shade700,
        // tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        onTabChange: (value)=> onTabChange!(value),
        tabs: [
        GButton(
          text: "Shop",
           icon: Icons.home),
        GButton(
          text: 'Cart',
          icon: Icons.shopping_bag_rounded)
      ])
    );
  }
}