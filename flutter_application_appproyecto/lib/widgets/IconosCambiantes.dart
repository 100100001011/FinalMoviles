import 'package:flutter/material.dart';
import 'package:simple_animated_icon/simple_animated_icon.dart';

class IconoCambiante extends StatefulWidget {
  @override
  _IconoCambianteState createState() => _IconoCambianteState();
}

class _IconoCambianteState extends State<IconoCambiante>
    //LINEA DESCONOCIDA
    with
        SingleTickerProviderStateMixin {
  //VARIABLES
  bool abierto = false;
  late AnimationController controladorAnimacion;
  late Animation<double> progreso;

  //METODO ANTES QUE INICIE EL ESTADO
  @override
  void initState() {
    super.initState();
    controladorAnimacion =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300))
          //ANIMACION DE TRANSCION
          ..addListener(() {
            setState(() {});
          });
    //VARIABLE PARA LA ANIMACION DE ROTAR
    var curva = CurvedAnimation(
      parent: controladorAnimacion,
      curve: Interval(0.0, 1.0, curve: Curves.easeOut),
    );

    progreso = Tween<double>(begin: 0.0, end: 1.0).animate(curva);
  }

  //METODO DISPONIBLE
  @override
  void dispose() {
    controladorAnimacion.dispose();
    super.dispose();
  }

  //METODO ANIMACION
  void animacion() {
    if (abierto == true) {
      controladorAnimacion.reverse();
    } else {
      controladorAnimacion.forward();
    }

    //REVERSAR
    setState(() {
      abierto = !abierto;
    });
  }

  //GESTOR DE ANIMACION PARA EL CAMBIO DE ICONO
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: animacion,
        child: SimpleAnimatedIcon(
          size: 35,
          color: Colors.white,
          startIcon: Icons.add,
          endIcon: Icons.check,
          progress: progreso,
        ));
  }
}
