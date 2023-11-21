// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyButtonNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyButtonNavBar({
    Key? key,
    required this.onTabChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
        padding: EdgeInsets.symmetric(vertical: 20),
        color: Colors.grey[400],
        activeColor: Colors.grey.shade700,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 16,
        onTabChange: (value) => onTabChange!(value),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Shop',
            padding: EdgeInsets.all(15),
          ),
          GButton(
            icon: Icons.shopping_bag_rounded,
            text: 'Cart',
            padding: EdgeInsets.all(15),
          ),
          GButton(
            icon: Icons.info,
            text: 'About',
            padding: EdgeInsets.all(15),
          ),
        ],
      ),
    );
  }
}
