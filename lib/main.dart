import 'package:flutter/material.dart';
import 'package:flutter_uber/page/home/home.dart';
import 'package:flutter_uber/page/login/login_page.dart';
import 'package:flutter_uber/utils/colors.dart' as utils;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Uber Clone',
      initialRoute: 'home',
      theme: ThemeData(
        fontFamily: 'NimbusSans',
        appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: utils.Colors.uberClonColor
        ),
        primaryColor: utils.Colors.uberClonColor 
      ),
      routes: {
        'home': (BuildContext context) => Home_Page(),
        'login': (BuildContext context) => LoginPage()
      },
    );
  }
}
