import 'package:flutter/material.dart';
import 'package:flutter_application_appproyecto/Partes/BarraMedia.dart';
import 'package:flutter_application_appproyecto/Partes/BarraSuperior.dart';
import 'widgets/Widgets.dart';
import 'widgets/carrusel.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _Home();
}

/// This is the private State class that goes with MyStatefulWidget.
class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //
        body: CustomScrollView(
      slivers: [
        //dasdasdasd
        SliverAppBar(
          title: BarraSuperior(),
          pinned: true,
          //snap: false,
          floating: false,
          //TAMANIO
          expandedHeight: 500.0,
          flexibleSpace: FlexibleSpaceBar(
            background: Stack(
              fit: StackFit.expand,
              children: [
                ImagenFondo("media/img/Fondo.jpg"),
                Gradiente1(),
                BarraMedia()
              ],
            ),
          ),
        ),
        ListaProgreso(
            "Continua Viendo",
            "media/img/1.jpg",
            "media/video/shingeki.mp4",
            "media/img/2.jpg",
            "media/video/evangelion.mp4",
            "media/img/3.jpg",
            "media/video/kimetsu.mp4"),
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
