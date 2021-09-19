import 'package:flutter/material.dart';
import 'package:flutter_application_appproyecto/widgets/Widgets.dart';
import 'package:flutter_application_appproyecto/widgets/player.dart';
import 'package:flutter_application_appproyecto/widgets/IconosCambiantes.dart';

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
            FlatButton.icon(
              //FUNCION PARA LLAMAR AL VIDEO
              onPressed: () {
                //pushReplacement = PERMITE CERRAR LA PANTALLA
                Navigator.pushReplacement(
                    context,
                    //PERMITE IR A OTRA VISTA
                    MaterialPageRoute(
                      builder: (context) => VistaPlay(
                        direccion: "media/video/steing.mp4",
                      ),
                    ));
              },
              //PROPIEDADES DEL BOTON
              color: Colors.white,
              icon: Icon(
                Icons.play_arrow,
                color: Colors.black87,
              ),
              label: Text("Reproducir"),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Tooltip(
                    message: 'I am a Tooltip',
                    child: Icon(Icons.info, color: Colors.white)),
                Textos1("Informacion", 11)
              ],
            )
          ]),
    );
  }
}
