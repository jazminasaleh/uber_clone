import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            //*degradado
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.black, Colors.black87])),
            child: Column(
              children: [
                _LineaNegra(),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'SELECCIONA TU ROL',
                  style: TextStyle(color: Colors.white, fontFamily: 'OneDay'),
                ),
                SizedBox(
                  height: 30,
                ),
                _imageTypeUser('assets/img/pasajero.png'),
                SizedBox(
                  height: 10,
                ),
                _textTypeUser('Cliente'),
                SizedBox(
                  height: 30,
                ),
                _imageTypeUser('assets/img/driver.png'),
                SizedBox(
                  height: 10,
                ),
                _textTypeUser('Conductor')
              ],
            ),
          ),
        ));
  }

  Widget _imageTypeUser(String ruta) {
    return CircleAvatar(
      backgroundImage: AssetImage(ruta),
      radius: 50,
      backgroundColor: Colors.grey[900],
    );
  }

  Widget _textTypeUser(String typeUser) {
    return Text(
      typeUser,
      style: TextStyle(color: Colors.white, fontSize: 16),
    );
  }
}

class _LineaNegra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: DiagonalPathClipperTwo(),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.30,
        //*Color
        color: Colors.white,
        child: Row(
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
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
