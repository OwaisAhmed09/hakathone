import 'package:flutter/material.dart';

class drawer extends StatelessWidget {
  drawer({super.key, required this.text, required this.image});
  var image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      child: Column(
        children: [
          Image(image: image),
          Text(text),
        ],
      ),
    );
  }
}
