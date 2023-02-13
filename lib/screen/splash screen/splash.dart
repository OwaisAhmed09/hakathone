import 'package:flutter/material.dart';
import 'package:hacathon/screen/login%20screens/signUp.dart';
import 'package:hacathon/screen/utiles/color.dart';
import 'package:hacathon/screen/utiles/text.dart';

class SplashScreenPage extends StatelessWidget {
  SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 1.00,
          width: MediaQuery.of(context).size.width * 1.00,
          child: Column(
            children: [
              Container(
                height: 496,
                width: double.infinity,
                child: Stack(
                  children: [
                    Container(
                      height: 496,
                      width: double.infinity,
                      // ignore: prefer_const_constructors
                      child: Image(
                        image: const AssetImage(
                          "assets/images/Rectangle 118 (1).png",
                        ),
                      ),
                      // decoration: const BoxDecoration(
                      //   image: DecorationImage(
                      //     image:
                      //   ),
                      // ),
                    ),
                    Container(
                      height: 496,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/Vector.png"))),
                    ),
                    Container(
                      height: 420,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/Logo.png"))),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      height: 420,
                      width: double.infinity,
                      child: Text(textFile.splash_Text,
                          style: philo.copyWith(
                            color: SolidColors.splashScreen_and_button_Text,
                            letterSpacing: 5,
                            fontSize: 50,
                            fontWeight: FontWeight.w700,
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                ),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(textFile.splash_Text_SECOND,
                      style: philo.copyWith(
                        color: SolidColors.textColor,
                        letterSpacing: 6,
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 24),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(textFile.splash_Text_THIRD,
                      style: philo.copyWith(
                        color: SolidColors.textColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: Container(
                  width: double.infinity,
                  child: RawMaterialButton(
                    fillColor: Color(0xFF0069FE),
                    elevation: 0.0,
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const signUp(),
                          ));
                    },
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                    child: const Text("Text"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
