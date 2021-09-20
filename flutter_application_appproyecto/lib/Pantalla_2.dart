import 'package:flutter/material.dart';
import 'widgets/Widgets.dart';
import 'widgets/player.dart';
import 'widgets/iconsLike.dart';

class Pantalla2 extends StatefulWidget {
  @override
  State<Pantalla2> createState() => _Pantalla2();
}

/// This is the private State class that goes with MyStatefulWidget.
class _Pantalla2 extends State<Pantalla2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //
        backgroundColor: Colors.black,
        body: CustomScrollView(
          slivers: [
            //
            SliverAppBar(
              expandedHeight: 500.0,
              flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(),
                      child: SizedBox(
                        height: 250.00,
                        width: 150.00,
                        child: Image(image: AssetImage("media/img/Fondo2.jpg")),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "95 % match",
                          style:
                              TextStyle(color: Colors.green[300], fontSize: 13),
                        ),
                        Textos1("2021", 13),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Textos1("12+", 15),
                          ),
                        ),
                        Textos1("seasons 5", 13)
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Container(
                          height: 35.00,
                          width: 400.00,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: BotonPlay(
                            nombre: "Play",
                            ubicacion: "media/video/rick.mp4",
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                          height: 50.00,
                          child: Textos1(
                              "Después de una serie de episodios algo decepcionantes, el final de la quinta temporada de 'Rick y Morty' realmente hizo que las cosas remontaran,",
                              13)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                          height: 60.00,
                          child: Textos1(
                              "ofreciendo a los fans no solo uno, sino una serie de revelaciones muy locas Además del tan esperado regreso de Evil Morty (con parche en el ojo) y una inmersión profunda en la estúpida historia del llorón de Rick",
                              13)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              iconDown(),
                              Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    'Descargar',
                                    style: TextStyle(color: Colors.white),
                                  ))
                            ],
                          ),
                          Column(
                            children: [
                              iconLike(),
                              Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    'Me Gusta',
                                    style: TextStyle(color: Colors.white),
                                  ))
                            ],
                          ),
                          Column(
                            children: [
                              iconFavorite(),
                              Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    'Favoritos',
                                    style: TextStyle(color: Colors.white),
                                  ))
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("media/img/Fondo2.jpg"),
                      //CONSTRANTE IMAGEN
                      colorFilter:
                          ColorFilter.mode(Colors.black87, BlendMode.darken)),
                ),
              )),
            ),
          ],
        ));
  }
}
