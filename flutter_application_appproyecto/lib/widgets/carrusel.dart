import 'package:flutter/material.dart';
import 'player.dart';
import 'Widgets.dart';

class Card extends StatelessWidget {
  String ruta;
  String rutaVideo;
  Card({required this.ruta, required this.rutaVideo, Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    //GestureDetector = DETECTA GESTOS MIENTRAS PESIONAN EL OBJETO
    return GestureDetector(
      onTap: () {
        //pushReplacement = PERMITE CERRAR LA PANTALLA
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => VistaPlay(
                direccion: rutaVideo,
              ),
            ));
      },
      //IMAGEN DE CARRUSEL
      child: Container(
        height: 200,
        width: 100,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            image: DecorationImage(fit: BoxFit.cover, image: AssetImage(ruta)),
            shape: BoxShape.rectangle,
            //SOMBRAS
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black38,
                  blurRadius: 15.0,
                  offset: Offset(0.0, 7.0))
            ]),
      ),
    );
  }
}

Widget Carrusel(String dire1, String video1, String dire2, String video2,
    String dire3, String video3, String dire4, String video4) {
  return Container(
    height: 200,
    width: 400,
    margin: EdgeInsets.only(),
    child: ListView(
      padding: EdgeInsets.all(10),
      //DIRECCION DEL SRCOLL
      scrollDirection: Axis.horizontal,
      children: [
        Card(ruta: dire1, rutaVideo: video1),
        Card(ruta: dire2, rutaVideo: video2),
        Card(ruta: dire3, rutaVideo: video3),
        Card(ruta: dire4, rutaVideo: video4)
      ],
    ),
  );
}

Widget Lista(String titulo, String dire1, String video1, String dire2,
    String video2, String dire3, String video3, String dire4, String video4) {
  //SliverList = SCROLL HORIZONTAL
  return SliverList(
    delegate: SliverChildBuilderDelegate((BuildContext context, index) {
      return Container(
        color: Colors.black,
        child: Stack(
          children: [
            Textos2(titulo, 20),
            Carrusel(dire1, video1, dire2, video2, dire3, video3, dire4, video4)
          ],
        ),
      );
    }, childCount: 1),
  );
}

//##############################################################################
//COPIA DE ARRIBA
class Card2 extends StatelessWidget {
  String ruta;
  String rutaVideo;
  Card2({required this.ruta, required this.rutaVideo, Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          //pushReplacement = PERMITE CERRAR LA PANTALLA
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => VistaPlay(
                  direccion: rutaVideo,
                ),
              ));
        },
        child: Container(
          height: 150,
          width: 100,
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                height: 120,
                width: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage(ruta)),
                    shape: BoxShape.rectangle,
                    //SOMBRAS
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.black38,
                          blurRadius: 15.0,
                          offset: Offset(0.0, 7.0))
                    ]),
              ),
              //LinearProgressIndicator = LISTA DE PROGRESO
              LinearProgressIndicator(
                value: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                      child: Icon(
                          //MODELO DEL ICONO
                          Icons.bookmark,
                          //TAMaÑo
                          size: 26,
                          color: Colors.white)),
                  Center(
                      child: Icon(
                          //MODELO DEL ICONO
                          Icons.help,
                          //TAMaÑo
                          size: 26,
                          color: Colors.white))
                ],
              )
            ],
          ),
        ));
  }
}

Widget Carrusel2(String dire1, String video1, String dire2, String video2,
    String dire3, String video3) {
  return Container(
    height: 219,
    width: 400,
    margin: EdgeInsets.only(),
    child: ListView(
      padding: EdgeInsets.all(23),
      //DIRECCION DEL SRCOLL
      scrollDirection: Axis.horizontal,
      children: [
        Card2(ruta: dire1, rutaVideo: video1),
        Card2(ruta: dire2, rutaVideo: video2),
        Card2(ruta: dire3, rutaVideo: video3)
      ],
    ),
  );
}

Widget ListaProgreso(String titulo, String dire1, String video1, String dire2,
    String video2, String dire3, String video3) {
  return SliverList(
    delegate: SliverChildBuilderDelegate((BuildContext context, index) {
      return Container(
        color: Colors.black,
        child: Stack(
          children: [
            Textos2(titulo, 20),
            Carrusel2(dire1, video1, dire2, video2, dire3, video3)
          ],
        ),
      );
    }, childCount: 1),
  );
}
