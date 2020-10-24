import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login/loginPage.dart';

void main() => runApp(MyApp());  // Se dirige a la clase MyApp

class MyApp extends StatelessWidget {
  // Este widget es la raiz de la aplicacion
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gym App N',   // Titulo de proyecto
      theme: ThemeData(
        primaryColor: Color.fromRGBO(143, 20, 27, 1.0), // Define el color por defecto
        fontFamily: 'Open Sans', // Define la Familia de fuente por defecto
      ),
      home: new LoginPage(title: 'LEDRF Altius',) // Se dirige a la clase LoginPage con el parametro del titulo
    );
  }
}