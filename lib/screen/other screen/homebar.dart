import 'package:flutter/material.dart';
import 'package:hacathon/screen/utiles/color.dart';
import 'package:hacathon/screen/utiles/text.dart';
import 'package:hacathon/screen/wigets/appBar.dart';
import 'package:hacathon/screen/wigets/banner.dart';
import 'package:hacathon/screen/wigets/naveBar.dart';
import 'package:hacathon/screen/wigets/searchBar.dart';
import 'package:hacathon/screen/wigets/tabBar.dart';

class Homebar extends StatefulWidget {
  const Homebar({super.key});

  @override
  State<Homebar> createState() => _HomebarState();
}

class _HomebarState extends State<Homebar> with SingleTickerProviderStateMixin {
  TextEditingController search = TextEditingController();
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(19.0),
          child: Column(
            children: [
              AppBarTop(image: Image.asset("assets/images/notification.png")),
              const SizedBox(
                height: 7,
              ),
              const Bannertop(),
              const SizedBox(
                height: 24,
              ),
              searchBar(),
              const SizedBox(
                height: 24,
              ),
              TabBarPages(),
              GNavigator(),
            ],
          ),
        ),
      ),
    );
  }
}
