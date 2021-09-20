import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_appproyecto/widgets/Widgets.dart';

class BarraSuperior extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        //WIDGET PERSONAL
        ImagenNormal("media/img/logo2.png", 70.00, 70.00),
        //WIDGET PERSONAL
        Enlaces(
          nombre: "Series",
        ),
        //WIDGET PERSONAL
        Enlaces(
          nombre: "Peliculas",
        ),
      ],
    );
  }
}
