import 'package:flutter/material.dart';

//*Para obtener la infromacion que el usuario digite
//*Tanto el correo como la contraseña en el login
class LoginController {
  late BuildContext context;

  TextEditingController emialController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  Future init(BuildContext context) async {
    this.context = context;
  }

  void login() {
    String email = emialController.text;
    String password = passwordController.text;
    print(email);
    print(password);
  }
}
