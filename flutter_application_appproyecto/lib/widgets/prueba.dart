/// Flutter code sample for TextButton

// This sample shows how to render a disabled TextButton, an enabled TextButton
// and lastly a TextButton with gradient background.

import 'package:flutter/material.dart';
import 'package:flutter_application_appproyecto/Pantalla_3.dart';

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
    return TextButton.icon(
      icon: Icon(Icons.save),
      label: Text("SAVE"),
      style: TextButton.styleFrom(
        primary: Colors.white,
        backgroundColor: Colors.green,
      ),
      onPressed: () {
        //pushReplacement = PERMITE CERRAR LA PANTALLA
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Prueba3()));
      },
    );
  }
}
