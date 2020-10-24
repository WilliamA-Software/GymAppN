import 'package:flutter/material.dart';
import '../style/fondocolor.dart';
import 'package:flutter/cupertino.dart';
import 'valAnswersCitation.dart';

class ValRespuestas extends StatefulWidget {
  @override
  _ValRespuestasState createState() => _ValRespuestasState();
}

class _ValRespuestasState extends State<ValRespuestas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Validar respuestas'),  //Titulo de la barra superior
      ),
      body: new Stack(
        children: <Widget>[
          new FondoColor(), //definir el color de fondo
          new Container(
            margin: new EdgeInsets.all(20.0),
            child: Form(
                child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Texto de Informacion personal
                  Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 30.0),
                    child: Align(
                      alignment: Alignment.center, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                      child: Text(    //añadir texto
                        "Declaro que mis respuestas son completas y verdaderas",
                        style: new TextStyle(
                          fontSize:22.0,
                          color: const Color(0xFF000000),
                          fontFamily: "Open Sans",
                          
                        ),
                      ),
                    ),
                  ),
                    
                  Container(
                    child: SizedBox(
                    width: double.infinity,
                    child: RaisedButton(
                      child: Text('Acepto y Continuar'),
                      color: Color.fromRGBO(143, 20, 27, 1.0),
                      textColor: Color.fromRGBO(223, 212, 166, 1.0),
                      onPressed: (){
                          
                          Navigator.push(
                              context,
                              CupertinoPageRoute(builder: (context) => ValParaCitas()),
                          );   
                      },
                    )
                    )
                  )
                ]    
              )
            )
            )
          )
        ]
      )
    );
  }
}