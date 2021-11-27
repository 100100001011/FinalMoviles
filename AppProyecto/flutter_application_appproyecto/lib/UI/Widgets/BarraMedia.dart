import 'package:flutter/material.dart';
import 'package:flutter_application_appproyecto/UI/Widgets/Widgets.dart';
import 'package:flutter_application_appproyecto/UI/Widgets/player.dart';
import 'package:flutter_application_appproyecto/UI/Widgets/IconosCambiantes.dart';
import 'package:flutter_application_appproyecto/UI/Widgets/iconsLike.dart';

class BarraMedia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 25.0, right: 45, left: 60),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [IconoCambiante(), Textos1("Agregar", 11)],
            ),
            //WIDGET BOTON
            BotonPlay(
                nombre: "Reproducir ", ubicacion: "media/video/steing.mp4"),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Tooltip(
                    message: """
Serie de TV (2011). 24 episodios + 1 OVA. La historia transcurre en Akihabara y trata sobre un grupo de 
amigos que ha convertido su horno de microondas en un dispositivo que puede enviar mensajes de texto al pasado.""",
                    child: iconInfo()),
                Textos1("Informacion", 11)
              ],
            )
          ]),
    );
  }
}
