import 'package:flutter/material.dart';
import '../style/fondocolor.dart';
import 'registryContinue.dart';
import 'package:firebase_database/firebase_database.dart';


    class RegistryStudent extends StatefulWidget {

    @override
    _RegistryStudentState createState() => _RegistryStudentState();
    }

    class _RegistryStudentState extends State<RegistryStudent> {

      final DBRef = FirebaseDatabase.instance.reference();

      //variables

    bool _termsAgreed = false;

    //validadores
    GlobalKey<FormState> _formKey= new GlobalKey();
    
    TextEditingController nameStudent = new TextEditingController();
    TextEditingController lastnameStudent = new TextEditingController();
    TextEditingController emailStudent = new TextEditingController();
    TextEditingController passwordStudent = new TextEditingController();
    TextEditingController password2Student = new TextEditingController();

    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
            title: Text('Registro Estudiante'), //Titulo de la barra superior
        ),
        body: new Stack(
            children: <Widget>[
            new FondoColor(), //definir el color de fondo
            new SingleChildScrollView(
        child: Container(
        margin: new EdgeInsets.all(20.0),
        child: Form(
                key: _formKey,
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                // Texto de Nombres
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "Nombres:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de Nombres
                TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        fillColor: Colors.white, 
                        filled: true,
                        ),
                    // ignore: missing_return
                    
                ),

                // Texto de Apellidos
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                        "Apellidos:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de texto de Apellidos
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

                // Texto de Correo
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "Correo:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de texto de Correo
                TextFormField(
                    keyboardType: TextInputType.emailAddress,
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

                // Texto de Contraseña
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "Constraseña:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de texto de contraseña
                TextFormField(
                    keyboardType: TextInputType.visiblePassword,
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

                // Texto de Verificar contraseña
                Container(
                    margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "Verificar contraseña:",
                            style: new TextStyle(
                                fontSize:16.0,
                                color: const Color(0xFF000000),
                                fontFamily: "Open Sans",
                            ),
                        ),
                    ),
                ),

                // Campo de texto de Verificar contraseña
                TextFormField(
                    keyboardType: TextInputType.visiblePassword,
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
                        onPressed: () async {
                            writeData();
                            showDialog(context: context,
                            builder: (context) => AlertDialog(
                              title: Text('Confirmacion'),
                              content: Text('¿Desea continuar con su registro o volver?'),
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
                                      title: Text('¡Registro preliminar exitoso!'),
                                      children: <Widget>[
                                        SimpleDialogOption(
                                            child: const Text('Continuar'),
                                            onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => RegistryContinue()),
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

    void writeData(){

    }
    }