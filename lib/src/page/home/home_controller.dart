import 'package:flutter/cupertino.dart';

class HomeController {
  late BuildContext context;
  Future init(BuildContext context) async {
    this.context = context;
  }

//*Para ir de rol a la pagina loguin
  void goToLoginPage() {
    Navigator.pushNamed(context, 'login');
  }
}
