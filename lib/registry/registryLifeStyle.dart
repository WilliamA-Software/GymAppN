import 'package:flutter/material.dart';
import '../style/fondocolor.dart';
import 'package:flutter/cupertino.dart';
import 'valAnswers.dart';

class EstiloDeVida extends StatefulWidget {
  @override
  _EstiloDeVidaState createState() => _EstiloDeVidaState();
}

class _EstiloDeVidaState extends State<EstiloDeVida> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('Registro estilo de vida'),
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

                // Texto de Estilo de vida
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.center, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "Estilo de Vida",
                            style: new TextStyle(
                                fontSize:22.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Texto de Ha fumado alguna vez
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "¿Ha fumado alguna vez?:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de texto Ha fumado alguna vez
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

                // Texto de Fuma actualmente
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                        "¿Fuma actualmente?:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de fuma actualmente
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

                // Texto de durante el mes pasado en bebidas alcoholicas
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "Durante el mes pasado. ¿Cuántos días tomó usted?:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de texto de Durante el mes pasado. ¿Cuántos días tomó usted?:
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

                // Texto de veces que tomo 5 o más bebidas alcoholicas
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "Durante el mes pasado. ¿Cuántas veces tomó usted 5 o más bebidas por ocasion?:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de veces que tomo 5 o más bebidas alcoholicas
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

                // Texto de En promedio cuanto consume a la semana
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "En promedio ¿Cuántas cervezas, vino o licor consume usted a la semana?",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de En promedio cuanto consume a la semana
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

                // Texto de Fuera de su práctica deportiva, ¿Se ejercita de forma regular?
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "Fuera de su práctica deportiva, ¿Se ejercita de forma regular?:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de texto Fuera de su práctica deportiva, ¿Se ejercita de forma regular?
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

                // Texto de Qué come usted regularmente
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "¿Qué come usted regularmente?:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de Qué come usted regularmente
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

                // Texto En qué lugar consume sus alimentos
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "¿En qué lugar consume sus alimentos?:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de En qué lugar consume sus alimentos
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

                // Texto Cual es el tamaño de las raciones 
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "¿Cuál es el tamaño de las raciones que consume usted normalmente?:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de Cual es el tamaño de las raciones
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

                // Texto Con cuanta frecuencia repite 
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "¿Con cuanta frecuencia repite usted platos de comida?:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de Con cuanta frecuencia repite 
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

                // Texto Cuanto tiempo demora en consumir su comida
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "¿Cuánto tiempo demora en consumir su comida?:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de Cuanto tiempo demora en consumir su comida
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

                // Texto Come usted mientras ve television,lee o trabaja
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "¿Come usted mientras ve television,lee o trabaja?:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de Come usted mientras ve television,lee o trabaja
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

                // Texto Con que frecuencia consume alimentos fritos
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "¿Con qué frecuencia consume alimentos fritos?:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de Con que frecuencia consume alimentos fritos
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

                // Texto Sala usted su comida en la mesa
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "¿Sala usted su comida en la mesa?:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de Sala usted su comida en la mesa
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
                        child: Text('Finalizar Estilo de vida'),
                        color: Color.fromRGBO(143, 20, 27, 1.0),
                        textColor: Color.fromRGBO(223, 212, 166, 1.0),
                        onPressed: (){

                            showDialog(context: context,
                            builder: (context) => AlertDialog(
                              title: Text('Confirmacion'),
                              content: Text('¿Guardar estilo de vida?'),
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
                                      title: Text('¡Registro del Estilo de Vida exitoso!'),
                                      children: <Widget>[
                                        SimpleDialogOption(
                                            child: const Text('Continuar'),
                                            onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    CupertinoPageRoute(builder: (context) => ValRespuestas()),
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