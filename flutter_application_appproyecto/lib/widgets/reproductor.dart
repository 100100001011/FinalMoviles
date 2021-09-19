import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

//STATEFULWIDGET
class ReproductorMedia extends StatefulWidget {
  //VARIABLE TIPO VideoPlayerController PARA QUE SE MUESTRE
  final VideoPlayerController reproductor;
  //CONSTRUCTOR
  ReproductorMedia({required this.reproductor, Key? key}) : super(key: key);

  @override
  _ReproductorMediaState createState() => _ReproductorMediaState();
}

class _ReproductorMediaState extends State<ReproductorMedia> {
  //VARIABLE TIPO ChewieController PARA LOS CONTROLES
  late ChewieController controles;
  @override
  void initState() {
    //PROPIEDADES DEL REPRODUCTOR
    controles = ChewieController(
        videoPlayerController: widget.reproductor,
        aspectRatio: 4 / 6,
        autoInitialize: true,
        looping: false,
        autoPlay: true);
  }

  @override
  Widget build(BuildContext context) {
    return Chewie(controller: controles);
  }

  @override
  //VISUALIZA EL REPRODUCTOR
  void dispose() {
    super.dispose();
    widget.reproductor.dispose();
    controles.dispose();
  }
}
