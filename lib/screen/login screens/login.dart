import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hacathon/screen/home.dart';
import 'package:hacathon/screen/other%20screen/homebar.dart';
import 'package:hacathon/screen/utiles/color.dart';
import 'package:hacathon/screen/utiles/text.dart';
import 'package:hacathon/screen/wigets/textfield.dart';
import 'package:hacathon/screen/login%20screens/signUp.dart';

class login_page extends StatefulWidget {
  const login_page({super.key});

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  registerUser() async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email.text,
        password: password.text,
      );
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) {
            return const Homebar();
          },
        ),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
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
                    ],
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "Logo",
                          style: philo.copyWith(
                            color: SolidColors.textColor,
                            fontSize: 36,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          textFile.lOGIN_Text,
                          style: philo.copyWith(
                            color: SolidColors.textColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 47,
                  ),
                  textfielddynamic(
                      labeltext: "Enter Email",
                      icon: Icon(Icons.email_outlined),
                      controller: email),
                  const SizedBox(
                    height: 36,
                  ),
                  Passworddynamic(
                      labeltext: "Enter Password",
                      icon: const Icon(Icons.lock),
                      controller: password),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        child: const Text(
                          'Lupa password',
                          style: TextStyle(
                              fontSize: 14,
                              color: SolidColors.forgot,
                              fontWeight: FontWeight.w400),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const signUp(),
                              ));
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 43,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
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
                          registerUser();
                        },
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700,
                        ),
                        child: const Text("MULAI BELAJAR"),
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
