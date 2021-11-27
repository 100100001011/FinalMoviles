import 'package:flutter/material.dart';
import 'package:flutter_application_appproyecto/UI/Widgets/navbar.dart';

void main() => runApp(Prueba3());

class Prueba3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
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
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset(
              'media/img/prox.jpg',
              fit: BoxFit.cover,
            ),
            Center(
              child: Container(
                  height: 300,
                  width: 300,
                  child: Image.asset("media/img/coming.png")),
            )
          ],
        ),
      ),
    );
  }
}
