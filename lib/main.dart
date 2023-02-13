import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hacathon/firebase_options.dart';
import 'package:hacathon/screen/home.dart';

import 'package:hacathon/screen/other%20screen/Homebar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home_page(),
    );
  }
}
