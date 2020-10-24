import 'package:flutter/material.dart';
import '../style/fondocolor.dart';

class ForgetEmail extends StatefulWidget {
    @override
    _ForgetEmailState createState() => _ForgetEmailState();
}

class _ForgetEmailState extends State<ForgetEmail> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Olvide mi correo'),  //Titulo de la barra superior
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


                            // Texto de Recuperar clave
                            Container(
                                margin: const EdgeInsets.only(top: 10.0, bottom: 25.0),
                                child: Align(
                                alignment: Alignment.center, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                                child: Text(    //añadir texto
                                    "Recuperar correo",
                                    style: new TextStyle(
                                    fontSize:30.0,
                                    color: const Color(0xFF000000),
                                    fontFamily: "Open Sans",
                                    ),
                                ),
                                ),
                            ),

                            // Texto de Numero de documento
                            Container(
                                margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                                child: Align(
                                alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                                child: Text(    //añadir texto
                                    "Número de documento",
                                    style: new TextStyle(
                                    fontSize: 16.0,
                                    color: const Color(0xFF000000),
                                    fontFamily: "Open Sans",
                                    ),
                                ),
                                ),
                            ),
                            
                            // Campo de texto de documento
                            TextField(
                                autofocus: true,
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                fillColor: Colors.white, 
                                filled: true,
                                ),
                            ),

                            // Texto de Celular
                            Container(
                                margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                                child: Align(
                                alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                                child: Text(    //añadir texto
                                    "Número de celular",
                                    style: new TextStyle(
                                    fontSize: 16.0,
                                    color: const Color(0xFF000000),
                                    fontFamily: "Open Sans",
                                    ),
                                ),
                                ),
                            ),
                            
                            // Campo de texto de Celular
                            TextField(
                                autofocus: true,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                fillColor: Colors.white, 
                                filled: true,
                                ),
                            ),
                            
                            Container(
                                margin: const EdgeInsets.only(top: 25.0, bottom: 15.0),
                                child: SizedBox(
                                    width: double.infinity,
                                    // height: double.infinity,
                                    child: FlatButton(
                                    child: Text('Recuperar'),
                                    color: Color.fromRGBO(143, 20, 27, 1.0),
                                    textColor: Color.fromRGBO(223, 212, 166, 1.0),
                                    onPressed: (){
                                        showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                          title: Text('Confirmacion'),
                                          content: new Container(
                                            child: Row(
                                              children: const <Widget> [
                                                Icon(Icons.check_circle),]
                                            )
                                            ),
                                          actions: <Widget>[
                                            FlatButton(
                                              child: Text('OK'),
                                              color: Color.fromRGBO(143, 20, 27, 1.0),
                                              textColor: Color.fromRGBO(223, 212, 166, 1.0),
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                          ],
                                        )); 
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
