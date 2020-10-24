import 'package:flutter/material.dart';
import '../style/fondocolor.dart';
import 'valSportsHistory.dart';
import 'package:flutter/cupertino.dart';

class InformationPersonal extends StatefulWidget {
  @override
  _InformationPersonalState createState() => _InformationPersonalState();
}

class _InformationPersonalState extends State<InformationPersonal> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('Registro información personal'),
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
                            "Información Personal",
                            style: new TextStyle(
                                fontSize:22.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Texto de Codigo
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "Código:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de Codigo
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

                // Texto de Carrera
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                        "Carrera:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de texto de Carrera
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

                // Texto de Semestre
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "Semestre:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de texto de Semestre
                TextFormField(
                    keyboardType: TextInputType.numberWithOptions(signed: true),
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

                // Texto de Tipo de documento
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "Tipo de documento:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de texto de Tipo de documento
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

                // Texto de Numero de documento
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "Numero de documento:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de numero de documento
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

                // Texto de fecha de nacimiento
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "Fecha de nacimiento:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de fecha de nacimiento
                TextFormField(
                    keyboardType: TextInputType.datetime,
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

                // Texto de Edad
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "Lugar de nacimiento:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de lugar de nacimiento
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

                // Texto de Residencia
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "Direccion de residencia:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de direccion de residencia
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

                // Texto de Sexo
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "Sexo:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de texto de Sexo
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

                // Texto de Celular
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "Número de celular:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de numero de celular
                TextFormField(
                    keyboardType: TextInputType.phone,
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

                // Texto de EPS
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "Eps:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de Eps
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

                // Texto de acudiente
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "Acudiente:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de texto acudiente
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

                // Texto de Celuar de Acudiente
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "Celuar del acudiente:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de celular de acudiente
                TextFormField(
                    keyboardType: TextInputType.phone,
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
                        child: Text('Finalizar primera parte del registro'),
                        color: Color.fromRGBO(143, 20, 27, 1.0),
                        textColor: Color.fromRGBO(223, 212, 166, 1.0),
                        onPressed: (){

                            showDialog(context: context,
                            builder: (context) => AlertDialog(
                              title: Text('Confirmacion'),
                              content: Text('¿Es correcta la información personal?'),
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
                                      title: Text('¡Registro de informacion personal Exitoso!'),
                                      children: <Widget>[
                                        SimpleDialogOption(
                                            child: const Text('Continuar'),
                                            onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    CupertinoPageRoute(builder: (context) => ValHistorialDeportivo()),
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
        )));
  }
}