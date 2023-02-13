import 'package:flutter/material.dart';
import 'package:hacathon/screen/home.dart';
import 'package:hacathon/screen/utiles/color.dart';
import 'package:hacathon/screen/utiles/text.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios_new_outlined),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 150,
                width: 150,
                child: Image(
                  image: AssetImage("assets/images/Ellipse 27.png"),
                ),
              ),
              SizedBox(
                height: 21,
              ),
              Center(
                child: Container(
                  child: Text(
                    "Order ",
                    style: philo.copyWith(
                      color: SolidColors.textColor,
                      fontSize: 36,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  child: Text(
                    " Received",
                    style: philo.copyWith(
                      color: SolidColors.textColor,
                      fontSize: 36,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 120,
              ),
              Center(
                child: Container(
                  height: 120,
                  width: 144,
                  child: Image(
                    image: AssetImage("assets/images/Logo.png"),
                    color: SolidColors.buttonColler,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  width: double.infinity,
                  child: RawMaterialButton(
                    fillColor: SolidColors.buttonColler,
                    elevation: 0.0,
                    padding: EdgeInsets.symmetric(vertical: 18.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => home_page(),
                          ));
                    },
                    child: Text("KIRIM"),
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                    ),
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
