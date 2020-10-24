import 'package:flutter/material.dart';
import '../style/fondocolor.dart';
import 'forgetPassword.dart';
import '../registry/registryGeneral.dart';

import '../session/sessionPrincipal.dart';

// Clase LoginPage como StatefulWidget, es decir que perdura en la ejecucion
class LoginPage extends StatefulWidget {
  final String title;
  LoginPage({Key key, this.title}) : super(key: key);
   _LoginPageState createState() => _LoginPageState();
}

// Clase Estado
class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LEDRF Altius'),  //Titulo de la barra superior
      ),
      
      body: new Stack(
          children: <Widget> [
              new FondoColor(),
              new Container(
           //definir el color de fondo
        // Se agrega un padding al contenedor
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              // Imagen logo desde pagina web
              Container(
                child: Image.network('https://www.usco.edu.co/imagen-institucional/logo/universidad-surcolombiana-v.png'),
              ),

              // Texto de Correo
              Container(
                margin: const EdgeInsets.only(top: 20.0, bottom: 10.0),
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

              // Texto de Clave
              Container(
                margin: const EdgeInsets.only(top: 5.0, bottom: 10.0),
                child: Align(
                    alignment: Alignment.centerLeft, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                    child: Text(    //añadir texto
                    "Contraseña:",
                    style: new TextStyle(
                        fontSize:16.0,
                        color: const Color(0xFF000000),
                        fontFamily: "Open Sans",
                    ),
                    ),
                ),
                ),

              // Campo de texto de Clave
              TextField(
                
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  fillColor: Colors.white, 
                  filled: true,
                  border: OutlineInputBorder(),
                ),
              ),
              
              // Boton de Iniciar Sesion
              Container(
                margin: const EdgeInsets.only(top: 5.0, bottom: 15.0),
                child: SizedBox(
                    width: double.infinity,
                    // height: double.infinity,
                    child: FlatButton(
                        child: Text('Iniciar Sesion'),
                        color: Color.fromRGBO(143, 20, 27, 1.0),
                        textColor: Color.fromRGBO(223, 212, 166, 1.0),
                        onPressed: (){
                            Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SesionPrincipal()),
                    );
                        }, 
                    ),
                ),
              ),

              // Boton Registrarme
              FlatButton(
                onPressed:(){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegistryGeneral()),
                    );
                },
                child: Text('Registrarme'),
              ),

              // Boton de Olvide mi contraseña
              FlatButton(
                child: Text('Olvidé mi contraseña'),
                onPressed:(){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ForgetPassword()),
                    );
                },
                
              ), 

              // Texto de Laboratorio de evaluacion
              Align(
                alignment: Alignment.bottomCenter, // Align however you like (i.e .centerRight, centerLeft)
                child: Text(
                    "Laboratorio de Evaluación y Desarrollo del Rendimiento Físico",
                    style: new TextStyle(
                        fontSize:12.0,
                        color: const Color(0xFF000000),
                        fontFamily: "Open Sans",
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