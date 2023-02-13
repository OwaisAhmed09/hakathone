import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hacathon/screen/login%20screens/login.dart';
import 'package:hacathon/screen/login%20screens/signUp.dart';
import 'package:hacathon/screen/other%20screen/orderDone.dart';
import 'package:hacathon/screen/splash%20screen/splash.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenPage(),
    );
  }
}
