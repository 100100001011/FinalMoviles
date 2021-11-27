import 'package:flutter/material.dart';
import 'package:flutter_application_appproyecto/UI/Widgets/BarraMedia.dart';
import 'package:flutter_application_appproyecto/UI/Widgets/BarraSuperior.dart';
import '../Widgets/Widgets.dart';
import '../Widgets/carrusel.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _Home();
}
//ESTO CAMBIASTE TU JAJA SALUDOS
class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //PERMITE HACER SCROLL A LA PANTALLA
        //Y SE MANEJA CON SLIVER PARA EFETOS DE DESPLAZAMIENTE
        body: CustomScrollView(
      slivers: [
        //APPBAR PARA MANTENER LA BARRA SUPERIOR INMOVIL
        SliverAppBar(
          //PROPIEDADES
          backgroundColor: Colors.black,
          title: BarraSuperior(),
          pinned: true,
          snap: false,
          floating: false,
          //TAMANIO
          expandedHeight: 500.0,
          //PERMITE EXPANDIR EL AREA
          flexibleSpace: FlexibleSpaceBar(
            background: Stack(
              //QUE SE AJUSTE TODA LA PANTALLA
              fit: StackFit.expand,
              children: [
                //WIGDET PERSONALIZADO
                ImagenFondo("media/img/Fondo.jpg"),
                //WIGDET PERSONALIZADO
                Gradiente1(),
                //WIGDET PERSONALIZADO
                BarraMedia()
              ],
            ),
          ),
        ),
        //WIGDET PERSONALIZADO - CARRUSEL
        ListaProgreso(
            "Continua Viendo",
            "media/img/1.jpg",
            "media/video/shingeki.mp4",
            "media/img/2.jpg",
            "media/video/evangelion.mp4",
            "media/img/3.jpg",
            "media/video/kimetsu.mp4"),
        //WIGDET PERSONALIZADO - CARRUSEL
        Lista(
            "Anime Kohai",
            "media/img/1A.jpg",
            "media/video/dragonball.mp4",
            "media/img/2A.jpg",
            "media/video/naruto.mp4",
            "media/img/3A.jpg",
            "media/video/bleach.mp4",
            "media/img/4A.jpg",
            "media/video/samuraix.mp4"),
        //WIGDET PERSONALIZADO - CARRUSEL
        Lista(
            "Anime Shonen",
            "media/img/1B.jpg",
            "media/video/bokuno.mp4",
            "media/img/2B.jpg",
            "media/video/nanatsu.mp4",
            "media/img/3B.jpg",
            "media/video/fireforce.mp4",
            "media/img/4B.jpg",
            "media/video/beastars.mp4"),
        //WIGDET PERSONALIZADO - CARRUSEL
        Lista(
            "Anime Isekai",
            "media/img/1C.jpg",
            "media/video/kobayashi.mp4",
            "media/img/2C.png",
            "media/video/konosuba.mp4",
            "media/img/3C.jpg",
            "media/video/rezero.mp4",
            "media/img/4C.jpg",
            "media/video/kaguya.mp4"),
      ],
    ));
  }
}
