import 'package:flutter/material.dart';
import 'package:hacathon/screen/utiles/color.dart';
import 'package:hacathon/screen/utiles/text.dart';

class searchBar extends StatelessWidget {
  searchBar({super.key});
  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.75,
                height: 50,
                child: TextField(
                  controller: search,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14)),
                    prefixIcon: const Icon(Icons.search),
                    suffix: Image.asset("assets/images/scanner.png"),
                    labelText: "search",
                    labelStyle: Popin.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: SolidColors.Top_Text_Product_text,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Image.asset("assets/images/cartImage.png")
            ],
          ),
        ),
      ],
    );
  }
}
