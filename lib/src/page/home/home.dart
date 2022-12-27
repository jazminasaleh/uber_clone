import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_uber/src/page/home/home_controller.dart';

class Home_Page extends StatelessWidget {
  HomeController _con = new HomeController();

  @override
  Widget build(BuildContext context) {
    _con.init(context);
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            //*degradado
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.black, Colors.black87])),
            child: Column(
              children: [
                _LineaNegra(),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'SELECCIONA TU ROL',
                  style: TextStyle(color: Colors.white, fontFamily: 'OneDay'),
                ),
                const SizedBox(
                  height: 30,
                ),
                _imageTypeUser(context, 'assets/img/pasajero.png'),
                const SizedBox(
                  height: 10,
                ),
                _textTypeUser('Cliente'),
                const SizedBox(
                  height: 30,
                ),
                _imageTypeUser(context, 'assets/img/driver.png'),
                const SizedBox(
                  height: 10,
                ),
                _textTypeUser('Conductor')
              ],
            ),
          ),
        ));
  }

  Widget _imageTypeUser(BuildContext context, String ruta) {
    return GestureDetector(
      onTap: _con.goToLoginPage,
      child: CircleAvatar(
        backgroundImage: AssetImage(ruta),
        radius: 50,
        backgroundColor: Colors.grey[900],
      ),
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
