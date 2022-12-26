import 'package:flutter/material.dart';
import 'package:flutter_uber/page/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     title: 'Uber Clone',
     initialRoute: 'home',
     routes: {
      'home': (BuildContext context) => Home_Page(),
     },
    );
  }
}