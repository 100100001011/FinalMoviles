import 'package:flutter/material.dart';
import 'package:flutter_application_appproyecto/Pantalla_3.dart';

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

class Enlaces extends StatelessWidget {
  String nombre;
  Enlaces({required this.nombre, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          primary: Colors.black,
          textStyle: TextStyle(fontSize: 20),
        ),
        onPressed: () {
          //pushReplacement = PERMITE CERRAR LA PANTALLA
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Prueba3()));
        },
        child: Text(
          this.nombre,
          style: TextStyle(color: Colors.blueGrey[50], fontSize: 16, shadows: [
            Shadow(
              offset: Offset(5.0, 5.0),
              blurRadius: 9.0,
              color: Colors.black,
            )
          ]),
        ));
  }
}
