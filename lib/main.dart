import 'package:flutter/material.dart';
import 'package:flutter_application_3/Screens/Start/start_screen.dart';
import 'package:flutter_application_3/constant.dart';
import 'package:flutter_application_3/nav.dart';

void main() {runApp(const MyApp());}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: const Color.fromRGBO(236, 236, 236, 10),
      ),
      home: const StartScreen(),
    );
  }
}
