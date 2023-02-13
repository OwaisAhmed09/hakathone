import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hacathon/screen/wigets/appBar.dart';

class favourite extends StatelessWidget {
  const favourite({super.key});

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
            ],
          ),
        ),
      ),
    );
  }
}
