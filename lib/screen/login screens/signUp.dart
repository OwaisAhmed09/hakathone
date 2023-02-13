import 'package:flutter/material.dart';

import 'package:hacathon/screen/login%20screens/login.dart';
import 'package:hacathon/screen/utiles/color.dart';
import 'package:hacathon/screen/utiles/text.dart';
import 'package:hacathon/screen/wigets/textfield.dart';

class signUp extends StatefulWidget {
  const signUp({super.key});

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController passward = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_ios_new),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 34,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 15,
                        height: 15,
                        child: Image(
                          image: AssetImage(
                            "assets/images/Logo.png",
                          ),
                          color: SolidColors.buttonColler,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        textFile.splash_Text,
                        style: philo.copyWith(
                          color: SolidColors.Top_Text_Product_text,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 3,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "Signup",
                          style: philo.copyWith(
                            color: SolidColors.textColor,
                            fontSize: 36,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          textFile.SIGN_UP_Text_SECOND,
                          style: philo.copyWith(
                            color: SolidColors.textColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 47,
                  ),
                  textfielddynamic(
                      labeltext: "Enter Email",
                      icon: Icon(Icons.email_outlined),
                      controller: email),
                  SizedBox(
                    height: 36,
                  ),
                  Passworddynamic(
                      labeltext: "Enter Password",
                      icon: Icon(Icons.lock),
                      controller: passward),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 43,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: Container(
                      width: double.infinity,
                      child: RawMaterialButton(
                        fillColor: SolidColors.buttonColler,
                        elevation: 0.0,
                        padding: EdgeInsets.symmetric(vertical: 20.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => login_page(),
                              ));
                        },
                        child: Text("MULAI BELAJAR"),
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
