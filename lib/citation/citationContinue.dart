import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../style/fondocolor.dart';
import 'citationRequest.dart';

class CitationContinue extends StatefulWidget {
  @override
  _CitationContinueState createState() => _CitationContinueState();
}

class _CitationContinueState extends State<CitationContinue> {
  
  @override
  void initState(){
    super.initState();
    Timer(Duration(milliseconds: 3000), ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => Visualizar())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Estudiante'),  //Titulo de la barra superior
      ),
      body: new Stack(
          children: <Widget> [
              new FondoColor(), //definir el color de fondo
              new Container(
           
                // Se agrega un padding al contenedor
                child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                    // Texto de Que sigue
                    Container(
                        margin: const EdgeInsets.only(top: 30.0, bottom: 40.0),
                        child: Align(
                        alignment: Alignment.center, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "¿Qué sigue?",
                            style: new TextStyle(
                            fontSize:30.0,
                            color: const Color(0xFF000000),
                            fontFamily: "Open Sans",
                            ),
                        ),
                        ),
                    ),        
                    ],
                ),
                )
            ),
        ],
      )
    );
    
  }
  }
  
  

class Visualizar extends StatefulWidget {
  @override
  _VisualizarState createState() => _VisualizarState();
}

class _VisualizarState extends State<Visualizar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Estudiante'),  //Titulo de la barra superior
      ),
      body: new Stack(
          children: <Widget> [
              new FondoColor(), //definir el color de fondo
              new Container(
           
                // Se agrega un padding al contenedor
                child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[


                    // Texto de Que sigue
                    Container(
                        margin: const EdgeInsets.only(top: 30.0, bottom: 40.0),
                        child: Align(
                        alignment: Alignment.center, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "¿Qué sigue?",
                            style: new TextStyle(
                            fontSize:30.0,
                            color: const Color(0xFF000000),
                            fontFamily: "Open Sans",
                            ),
                        ),
                        ),
                    ),

                    // Texto de Fase 1
                    Container(
                        margin: const EdgeInsets.only(top: 30.0, bottom: 40.0),
                        child: Align(
                        alignment: Alignment.center, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "Fase 2: Solicitar una cita",
                            style: new TextStyle(
                            fontSize:16.0,
                            color: const Color(0xFF000000),
                            fontFamily: "Open Sans",
                            ),
                        ),
                        ),
                    ),

                    // Boton de completar perfil
                    Container(
                        margin: const EdgeInsets.only(top: 5.0, bottom: 15.0),
                        child: 
                    // Boton de Estudiante
                    SizedBox(
                        width: double.infinity,
                        // height: double.infinity,
                        child: RaisedButton(
                        child: Text('Solicitar Cita'),
                        color: Color.fromRGBO(143, 20, 27, 1.0),
                        textColor: Color.fromRGBO(223, 212, 166, 1.0),
                        onPressed: (){
                            Navigator.push(
                              context,
                              CupertinoPageRoute(builder: (context) => SolicitudCita()),
                          );
                        },
                         
                        ),
                    ),
                    ),          
                    ],
                ),
                )
            ),
        ],
      )
    );
  }
}