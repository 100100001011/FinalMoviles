import 'dart:ffi';
import 'package:flutter/material.dart';

//TEXTOS NEGRILLA
Widget Textos1(String textos, double tama) {
  return Text(
    textos,
    style: TextStyle(color: Colors.white, fontSize: tama),
  );
}

Widget Textos2(String textos, double tama) {
  return Text(
    textos,
    style: TextStyle(
        color: Colors.white, fontSize: tama, fontWeight: FontWeight.bold),
  );
}

Widget Textos3(String textos, double tama) {
  return Text(
    textos,
    style: TextStyle(color: Colors.white, fontSize: tama, shadows: [
      Shadow(
        offset: Offset(5.0, 4.0),
        blurRadius: 6.0,
        color: Color.fromARGB(255, 0, 0, 0),
      )
    ]),
  );
}

Widget ImagenNormal(String direc, double ancho, double alto) {
  return Image.asset(direc, width: ancho, height: alto);
}

Widget ImagenFondo(String direc) {
  return Image.asset(direc, fit: BoxFit.cover);
}

Widget Gradiente1() {
  return DecoratedBox(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: <Color>[Colors.black54, Color(0x00000000)],
              begin: Alignment(0.0, 0.5),
              end: Alignment(0.0, 0.0))));
}
