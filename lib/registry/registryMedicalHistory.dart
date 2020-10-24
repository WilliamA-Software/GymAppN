import 'package:flutter/material.dart';
import '../style/fondocolor.dart';
import 'package:flutter/cupertino.dart';
import 'registryLifeStyle.dart';

class HistorialMedico extends StatefulWidget {
  @override
  _HistorialMedicoState createState() => _HistorialMedicoState();
}

class _HistorialMedicoState extends State<HistorialMedico> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('Registro historial medico'),
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
                            "Historial Médico",
                            style: new TextStyle(
                                fontSize:22.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Texto de Fecha del ultimo examen médico
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "Fecha del ultimo examen médico:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de texto Fecha del ultimo examen médico
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

                // Texto de ultima prueba de acondicionamiento
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                        "Ultima prueba de acondicionamiento:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de ultima prueba de acondicionamiento
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

                // Texto de Tipo de Operacion
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "Tipo de operación:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de texto de tipo de operacion
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

                // Texto de mes y año de operacion
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "Mes y año de hospitaliazacion:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de texto de Mes y año de hospitaliazacion:
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

                // Texto de Es usted alérgico
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "¿Es usted alérgico a medicamento, alimento u otra sustancia?",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de Es usted alérgico
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

                // Texto de Enfermedades diagnosticadas
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "Enfermedades que le han sido diagnosticadas o siendo tratadas por un médico:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de texto enfermedades diagnosticadas
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

                // Texto de recetado medicamento
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "¿Tiene recetado actualmente algún tipo de medicamento?:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de recetado medicamento
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

                // Texto Padece problema osteomuscular
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "¿Padece de algun problema osteomuscular?:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de problema osteomuscular
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

                // Texto tratado algun miembro familiar
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "¿Ha sido tratado algún miembro de su familia en alguna enfermedad?:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de tratado algun miembro familiar
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
                        child: Text('Finalizar Historial Médico'),
                        color: Color.fromRGBO(143, 20, 27, 1.0),
                        textColor: Color.fromRGBO(223, 212, 166, 1.0),
                        onPressed: (){

                            showDialog(context: context,
                            builder: (context) => AlertDialog(
                              title: Text('Confirmacion'),
                              content: Text('¿Guardar historial médico?'),
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
                                      title: Text('¡Registro de Historial Médico exitoso!'),
                                      children: <Widget>[
                                        SimpleDialogOption(
                                            child: const Text('Continuar'),
                                            onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    CupertinoPageRoute(builder: (context) => EstiloDeVida()),
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