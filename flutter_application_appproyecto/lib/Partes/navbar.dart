import 'package:flutter/material.dart';
import 'package:flutter_application_appproyecto/Pantalla_Inicio.dart';
import 'package:flutter_application_appproyecto/Pantalla_2.dart';

class Navbar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Navbar();
  }
}

class _Navbar extends State {
  int indexP = 0;
  //ARRAY DE WIDGET
  final List<Widget> vistasPantalla = [Home(), Pantalla2()];
  void onTapped(int index) {
    setState(() {
      indexP = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //LLAMAR AL WIDGET CON ARRAY
        body: vistasPantalla[indexP],
        //TEMA PARA LOS COLORES
        bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: Colors.black, primaryColor: Colors.white),
          child: BottomNavigationBar(
              //PROPIEDADES
              onTap: onTapped,
              currentIndex: indexP,
              unselectedItemColor: Colors.white,
              selectedItemColor: Colors.red,
              //ICONOS
              items: [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                    ),
                    label: "Inicio"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.play_circle_fill), label: "Estreno")
              ]),
        ));
  }
}
