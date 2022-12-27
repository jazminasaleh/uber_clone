import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_uber/utils/colors.dart' as utils;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       ),
        body: Column(
      children: [
        _bannerApp(),
        SizedBox(height: 20,),
        Row(
          children: [
            Padding(padding: EdgeInsets.only(left: 10)),
            Text('Continuca con tu', style: TextStyle(color: Colors.grey, fontSize: 20),)
          ],
        ),
        SizedBox(height: 20,),
        Row(
          children: [
            Padding(padding: EdgeInsets.only(left: 10)),
            Text('Login', style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),)
          ],
        )
        
      ],
    ));
  }
}

class _bannerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: WaveClipperTwo(),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.22,
        //*Color
        color: utils.Colors.uberClonColor,
        child: 
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/img/logo_app.png',
              width: 150,
              height: 100,
            ),
            Text(
              'Facil y rapido',
              style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
