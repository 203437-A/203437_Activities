import 'package:flutter/material.dart';
// import 'package:login/pages/login.dart';
import 'package:login/screens/onboarding/body_boarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
  


        primarySwatch: Colors.blue,
      ),
      home: const BodyBoarding(),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}


 



