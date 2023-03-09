import 'package:flutter/material.dart';
import 'package:menyou/constants/colors.dart';

import '../../Widgets/CNavbar.dart';
import '../../Widgets/MyBottomNavBar.dart';
import '../../Widgets/foodmenue.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      // getting the navbar from the widgets folder as a top navigation bar
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CNavbar(Icons.home, Icons.search),
      ),
      // list of cards in the body
      body: FoodMenu(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}