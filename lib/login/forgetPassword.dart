import 'package:flutter/material.dart';
import '../style/fondocolor.dart';
import 'forgetEmail.dart';

class ForgetPassword extends StatefulWidget {
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Olvide mi contraseña'),  //Titulo de la barra superior
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
                        margin: const EdgeInsets.only(top: 20.0, bottom: 40.0),
                        child: Align(
                        alignment: Alignment.center, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "Recuperar clave",
                            style: new TextStyle(
                            fontSize:30.0,
                            color: const Color(0xFF000000),
                            fontFamily: "Open Sans",
                            ),
                        ),
                        ),
                    ),

                    // Texto de Correo
                    Container(
                        margin: const EdgeInsets.only(top: 20.0, bottom: 10.0),
                        child: Align(
                        alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "Correo",
                            style: new TextStyle(
                            fontSize: 16.0,
                            color: const Color(0xFF000000),
                            fontFamily: "Open Sans",
                            ),
                        ),
                        ),
                    ),
                    
                    // Campo de texto de Correo
                    TextField(
                        controller: _emailController,
                        autofocus: true,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        fillColor: Colors.white, 
                        filled: true,
                        ),
                    ),

                    
                    
                    Container(
                        margin: const EdgeInsets.only(top: 5.0, bottom: 15.0),
                        child: 
                    // Boton de Iniciar Sesion
                    SizedBox(
                        width: double.infinity,
                        // height: double.infinity,
                        child: FlatButton(
                        child: Text('Recuperar'),
                        color: Color.fromRGBO(143, 20, 27, 1.0),
                        textColor: Color.fromRGBO(223, 212, 166, 1.0),
                        onPressed: (){}, 
                        ),
                    ),
                    ),

                    // Boton Olvide mi correo electronico
                    FlatButton(
                        onPressed:(){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ForgetEmail()),
                            );
                        },
                        child: Text('Olvide mi correo electronico'),
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

