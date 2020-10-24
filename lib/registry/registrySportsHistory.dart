import 'package:flutter/material.dart';
import '../style/fondocolor.dart';
import 'package:flutter/cupertino.dart';
import 'registryMedicalHistory.dart';

class HistorialDeportivo extends StatefulWidget {
  @override
  _HistorialDeportivoState createState() => _HistorialDeportivoState();
}

class _HistorialDeportivoState extends State<HistorialDeportivo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        appBar: AppBar(
            title: Text('Registro historial deportivo'),
            backgroundColor: Color.fromRGBO(143, 20, 27, 1.0),
        //Titulo de la barra superior
        ),
        body: new Stack(
            children: <Widget>[
            new FondoColor(), //definir el color de fondo
            new SingleChildScrollView(
        child: Container(
        margin: new EdgeInsets.all(20.0),
        child: Form(
                
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                // Texto de Informacion personal
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.center, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "Historial Deportivo",
                            style: new TextStyle(
                                fontSize:22.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Texto de Deporte
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "Deporte:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de texto de deporte
                TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        fillColor: Colors.white, 
                        filled: true,
                        ),
                    // ignore: missing_return
                    validator: (value) {
                        if (value.isEmpty) {
                            return 'Please enter some text';
                        }
                    },
                ),

                // Texto de Tiempo de practica
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                        "Tiempo que lleva de práctica:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de tiempo de practica
                TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        fillColor: Colors.white, 
                        filled: true,
                    ),
                    // ignore: missing_return
                    validator: (value) {
                        if (value.isEmpty) {
                            return 'Please enter some text';
                        }
                    },
                ),

                // Texto de Entrenador
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "Entrenador:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de texto de entrenador
                TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        fillColor: Colors.white, 
                        filled: true,
                    ),
                    // ignore: missing_return
                    validator: (value) {
                        if (value.isEmpty) {
                            return 'Please enter some text';
                        }
                    },
                ),

                // Texto de Nivel de competencia
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "Nivel de competencia:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de texto de Nivel de competencia
                TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        fillColor: Colors.white, 
                        filled: true,
                    ),
                    // ignore: missing_return
                    validator: (value) {
                        if (value.isEmpty) {
                            return 'Please enter some text';
                        }
                    },
                ),

                // Texto de horario de practica
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "Horario de práctica:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de horario de practica
                TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        fillColor: Colors.white, 
                        filled: true,
                    ),
                    // ignore: missing_return
                    validator: (value) {
                        if (value.isEmpty) {
                            return 'Please enter some text';
                        }
                    },
                ),

                // Texto de Tiempo de practica por dia
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "Tiempo de práctica por día:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de texto de tiempo de practica por dia
                TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        fillColor: Colors.white, 
                        filled: true,
                    ),
                    // ignore: missing_return
                    validator: (value) {
                        if (value.isEmpty) {
                            return 'Please enter some text';
                        }
                    },
                ),

                // Texto de tiempo de practica por semana
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "Tiempo de práctica por semana:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de tiempo de practica por semana
                TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        fillColor: Colors.white, 
                        filled: true,
                    ),
                    // ignore: missing_return
                    validator: (value) {
                        if (value.isEmpty) {
                            return 'Please enter some text';
                        }
                    },
                ),

                // Texto Dias de práctica
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "Dias de práctica:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de dias de practica
                TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        fillColor: Colors.white, 
                        filled: true,
                    ),
                    // ignore: missing_return
                    validator: (value) {
                        if (value.isEmpty) {
                            return 'Please enter some text';
                        }
                    },
                ),

            // Boton de finalizar primera parte de registro
            Container(
                margin: const EdgeInsets.only(top: 5.0, bottom: 10.0),
                child: SizedBox(
                    width: double.infinity,
                    // height: double.infinity,
                    child: RaisedButton(
                        child: Text('Finalizar Historial Deportivo'),
                        color: Color.fromRGBO(143, 20, 27, 1.0),
                        textColor: Color.fromRGBO(223, 212, 166, 1.0),
                        onPressed: (){

                            showDialog(context: context,
                            builder: (context) => AlertDialog(
                              title: Text('Confirmacion'),
                              content: Text('¿Guardar este historial deportivo?'),
                              actions: <Widget>[
                                FlatButton(
                                child: Text('Volver'),
                                onPressed: (){
                                    Navigator.of(context).pop();
                                }, 
                                )
                                ,
                                FlatButton(
                                  child: Text('Continuar'),
                                  onPressed: (){
                                    showDialog(context: context,
                                    builder: (context) => SimpleDialog(
                                      title: Text('¡Historial Deportivo guardado con éxito!'),
                                      children: <Widget>[
                                        SimpleDialogOption(
                                            child: const Text('Continuar'),
                                            onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    CupertinoPageRoute(builder: (context) => HistorialMedico()),
                                                );                 
                                            },
                                          
                                        ),
                                        
                                      ],
                                    ));
                                  }, 
                                ),
                                
                              ],
                            )
                            );

                            
                        },
                    ),
                ),
            ), 
        ],
        ) 
        ),
        ),
    )
            ],
        ));
  }
}