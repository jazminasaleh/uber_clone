import 'package:flutter/material.dart';
import 'package:flutter_uber/src/utils/colors.dart' as utils;

class ButtonApp extends StatelessWidget {
  Color colore;
  Color textColor;
  String text;
  IconData icono;
  Function onPressed;

  ButtonApp(
      {this.icono = Icons.arrow_forward_ios,
      this.textColor = Colors.white,
      this.colore = Colors.black54,
      required this.onPressed,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed();
      },
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
                height: 50,
                alignment: Alignment.center,
                child: Text(
                  text,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              alignment: Alignment.centerRight,
              height: 50,
              child: CircleAvatar(
                radius: 15,
                child: Icon(
                  icono,
                  color: utils.Colors.uberClonColor,
                ),
                backgroundColor: Colors.white,
              ),
            ),
          )
        ],
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(colore),
        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
            side: BorderSide(color: colore))),
      ),
    );
  }
}
