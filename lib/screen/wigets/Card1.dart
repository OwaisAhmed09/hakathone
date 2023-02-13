import 'package:flutter/material.dart';
import 'package:hacathon/screen/utiles/color.dart';
import 'package:hacathon/screen/utiles/text.dart';

class CardWigets extends StatelessWidget {
  const CardWigets(
      {super.key,
      required this.title,
      required this.price,
      required this.pic,
      required this.color});
  final String title;
  final String price;
  final String pic;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 177,
      width: 280,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
              image:  AssetImage("assets/images/splashLine.png")),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    textFile.cardlogotext,
                    style: Popin.copyWith(
                      color: SolidColors.Top_Text_Product_text,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    width: 37,
                    child:
                        Image(image: AssetImage("assets/images/Group66.png")),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                height: 47,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: philo.copyWith(
                        color: SolidColors.Top_Text_Product_text,
                        fontSize: 38,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 44,
              ),
              Row(
                children: [
                  SizedBox(
                    height: 44,
                    child: Text(
                      price,
                      style: Popin.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: SolidColors.Top_Text_Product_text,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 39,
                    child: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.favorite)),
                  ),
                  const SizedBox(
                    height: 22,
                    child:
                        Image(image: AssetImage("assets/images/Group61.png")),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
