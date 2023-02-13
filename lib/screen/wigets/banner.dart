import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hacathon/screen/utiles/color.dart';
import 'package:hacathon/screen/utiles/text.dart';

class Bannertop extends StatelessWidget {
  const Bannertop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 195,
      decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage("assets/images/cardImage.png"),
          ),
          borderRadius: BorderRadius.circular(28)),
      child: Stack(
        children: const [
          Positioned(
            left: 34,
            top: 43,
            child: Text(
              textFile.plantText,
              style: TextStyle(
                color: SolidColors.Top_Text_Product_text,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(
            height: 26,
          ),
          Positioned(
            left: 34,
            top: 120,
            child: Text(
              textFile.discount,
              style: TextStyle(
                color: SolidColors.Top_Text_Product_text,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Positioned(
            top: 156,
            left: 42,
            child: Image(
              image: AssetImage("assets/images/greenIndicator.png"),
            ),
          ),
        ],
      ),
    );
  }
}
