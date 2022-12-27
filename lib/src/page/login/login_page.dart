import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_uber/src/page/login/login_controller.dart';
import 'package:flutter_uber/src/utils/colors.dart' as utils;
import 'package:flutter_uber/src/widgets/button_app.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginController _con = new LoginController();

  @override
  void initState() {
    super.initState();

    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      _con.init(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _bannerApp(),
            SizedBox(
              height: 10,
            ),
            _textDescripcion(),
            _textLogin(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.17,
            ),
            _textFieldEmail(_con.emialController),
            _textFieldPassword(_con.passwordController),
            _buttonLogin(_con.login),
            _textNoTieneCuenta()
          ],
        ),
      ),
    );
  }

  Widget _textDescripcion() {
    return Row(
      children: [
        Padding(padding: EdgeInsets.only(left: 10)),
        Text(
          'Continua con tu',
          style: TextStyle(
              color: Colors.black54, fontSize: 24, fontFamily: 'NimbusSans'),
        )
      ],
    );
  }

  Widget _textLogin() {
    return Row(
      children: [
        Padding(padding: EdgeInsets.only(left: 10)),
        Text(
          'Login',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

Widget _textFieldEmail(TextEditingController con) {
  TextEditingController _con = con;
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 30),
    child: TextField(
      controller: _con,
      obscureText: false,
      cursorColor: utils.Colors.uberClonColor,
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: utils.Colors.uberClonColor),
        ),
        labelText: 'Correo electronico',
        labelStyle: TextStyle(color: utils.Colors.uberClonColor),
        suffixIcon: Icon(
          Icons.email_outlined,
          color: utils.Colors.uberClonColor,
        ),
      ),
    ),
  );
}

Widget _textFieldPassword(TextEditingController con) {
  TextEditingController _con = con;
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 30),
    child: TextField(
      controller: con,
      obscureText: true,
      cursorColor: utils.Colors.uberClonColor,
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: utils.Colors.uberClonColor),
        ),
        labelText: 'Contraseña',
        labelStyle: TextStyle(color: utils.Colors.uberClonColor),
        suffixIcon: Icon(
          Icons.lock_open_outlined,
          color: utils.Colors.uberClonColor,
        ),
      ),
    ),
  );
}

Widget _buttonLogin( Function onPressed) {
  return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
      child: ButtonApp(
          colore: utils.Colors.uberClonColor, text: 'Iniciar sesion', onPressed: onPressed,));
}

Widget _textNoTieneCuenta() {
  return Container(
    margin: EdgeInsets.only(bottom: 50),
    child: Text(
      'No tienes cuenta?',
      style: TextStyle(fontSize: 15, color: Colors.grey),
    ),
  );
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
        child: Row(
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
