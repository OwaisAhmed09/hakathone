import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hacathon/screen/other%20screen/favorite.dart';
import 'package:hacathon/screen/other%20screen/homebar.dart';
import 'package:hacathon/screen/other%20screen/itemScreen.dart';
import 'package:hacathon/screen/other%20screen/orderDone.dart';
import 'package:hacathon/screen/other%20screen/profile.dart';
import 'package:hacathon/screen/splash%20screen/splash.dart';
import 'package:hacathon/screen/utiles/color.dart';
import 'package:hacathon/screen/wigets/Card1.dart';

class GNavigator extends StatefulWidget {
  const GNavigator({super.key});

  @override
  State<GNavigator> createState() => _GNavigatorState();
}

class _GNavigatorState extends State<GNavigator> {
  @override
  Widget build(BuildContext context) {
    return GNav(tabs: [
      GButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Homebar()));
        },
        icon: Icons.home_outlined,
        iconColor: SolidColors.forgot,
        style: GnavStyle.oldSchool,
        iconActiveColor: SolidColors.forgot,
        text: '   Home',
        textColor: SolidColors.forgot,
        // backgroundColor: ColorConstant.greenText,
        iconSize: 24,
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.only(left: 10, top: 10),
        textStyle: const TextStyle(
            fontSize: 12, fontWeight: FontWeight.w700, fontFamily: 'DM Sans'),
      ),
      GButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const favourite()));
        },
        icon: Icons.favorite_border,
        iconColor: SolidColors.forgot,
        style: GnavStyle.oldSchool,
        iconActiveColor: SolidColors.forgot,
        text: '   Favorite',
        textColor: SolidColors.forgot,
        backgroundColor: SolidColors.forgot,
        iconSize: 24,
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.only(left: 10, top: 10),
        textStyle: const TextStyle(
            fontSize: 12, fontWeight: FontWeight.w700, fontFamily: 'DM Sans'),
      ),
      GButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const OrderScreen()));
        },
        icon: Icons.store,
        iconColor: SolidColors.forgot,
        style: GnavStyle.oldSchool,
        iconActiveColor: SolidColors.forgot,
        text: '   Order',
        textColor: SolidColors.forgot,
        backgroundColor: SolidColors.forgot,
        iconSize: 24,
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.only(left: 10, top: 10),
        textStyle: const TextStyle(
            fontSize: 12, fontWeight: FontWeight.w700, fontFamily: 'DM Sans'),
      ),
      GButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => profile()));
        },
        icon: Icons.person_outline_outlined,
        iconColor: SolidColors.forgot,
        style: GnavStyle.oldSchool,
        iconActiveColor: SolidColors.forgot,
        text: '   User',
        textColor: SolidColors.forgot,
        backgroundColor: SolidColors.forgot,
        iconSize: 24,
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.only(left: 10, top: 10),
        textStyle: const TextStyle(
            fontSize: 12, fontWeight: FontWeight.w700, fontFamily: 'DM Sans'),
      ),
    ]);
  }
}
