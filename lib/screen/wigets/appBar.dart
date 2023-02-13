import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hacathon/screen/other%20screen/drawer.dart';
import 'package:hacathon/screen/utiles/color.dart';
import 'package:hacathon/screen/utiles/text.dart';

class AppBarTop extends StatelessWidget {
  AppBarTop({super.key, required this.image});
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 20,
            height: 20,
            child: const Image(
              image: AssetImage(
                "assets/images/Logo.png",
              ),
              color: SolidColors.buttonColler,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            textFile.splash_Text,
            style: philo.copyWith(
              color: SolidColors.Top_Text_Product_text,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            width: 170,
          ),
          Container(
            width: 18,
            height: 19,
            child: image,
          ),
          const SizedBox(
            width: 15,
          ),
          Container(
            width: 31,
            height: 30,
            child: GestureDetector(
              child: const Image(
                image: AssetImage("assets/images/drawer.png"),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => first_page(),
                    ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
