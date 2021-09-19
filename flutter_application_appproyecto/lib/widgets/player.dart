import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'reproductor.dart';
import 'package:flutter_application_appproyecto/Partes/navbar.dart';

class VistaPlay extends StatefulWidget {
  String direccion;
  VistaPlay({required this.direccion, Key? key}) : super(key: key);
  @override
  _VistaPlayState createState() => _VistaPlayState();
}

class _VistaPlayState extends State<VistaPlay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            //BOTON PARA REGRESAR
            leading: IconButton(
          iconSize: 30,
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            //pushReplacement = PERMITE CERRAR LA PANTALLA
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Navbar()));
          },
        )),
        backgroundColor: Colors.black,
        body: Center(
            child: Padding(
          padding: EdgeInsets.all(8.0),
          child: ReproductorMedia(
              reproductor: VideoPlayerController.asset(widget.direccion)),
        )));
  }
}
