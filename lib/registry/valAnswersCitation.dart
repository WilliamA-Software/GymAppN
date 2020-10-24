import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../style/fondocolor.dart';
import '../citation/citationContinue.dart';

class ValParaCitas extends StatefulWidget {
  @override
  _ValParaCitasState createState() => _ValParaCitasState();
}

class _ValParaCitasState extends State<ValParaCitas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        title: Text('Validar Respuestas'),  //Titulo de la barra superior
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
                          margin: const EdgeInsets.only(top: 5.0, bottom: 50.0),
                          child: Align(
                              alignment: Alignment.center, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                              child: Text(    //añadir texto
                                  "Registro Completado",
                                  style: new TextStyle(
                                      fontSize:22.0,
                                      color: const Color(0xFF000000),
                                      fontFamily: "Open Sans",
                                  ),
                              ),
                          ),
                      ),

                      Container(
                          margin: const EdgeInsets.only(top: 5.0, bottom: 20.0),
                          child: Align(
                              alignment: Alignment.center, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                              child: Text(    //añadir texto
                                  "Ya puede solicitar su cita",
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
                            child: Text('Ir al siguiente paso'),
                            color: Color.fromRGBO(143, 20, 27, 1.0),
                            textColor: Color.fromRGBO(223, 212, 166, 1.0),
                            onPressed: (){
                                
                                Navigator.push(
                                    context,
                                    CupertinoPageRoute(builder: (context) => CitationContinue()),
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