import 'package:flutter/material.dart';
import 'package:flutter_application_appproyecto/widgets/Widgets.dart';
import 'package:flutter_application_appproyecto/widgets/player.dart';
import 'package:flutter_application_appproyecto/widgets/IconosCambiantes.dart';
import 'package:flutter_application_appproyecto/widgets/iconsLike.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: MyStatelessWidget(),
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton.icon(
          icon: Icon(Icons.play_arrow),
          label: Text("Reproducir"),
          style: TextButton.styleFrom(
            primary: Colors.white,
            backgroundColor: Colors.grey,
          ),
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
        ),
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
      ],
    );
  }
}
