import 'package:flutter/material.dart';
import 'registryStudent.dart';
import '../style/fondocolor.dart';

class RegistryGeneral extends StatefulWidget {
  @override
  _RegistryGeneralState createState() => _RegistryGeneralState();
}

class _RegistryGeneralState extends State<RegistryGeneral> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registrarme'),  //Titulo de la barra superior
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


                    // Texto de Yo Soy
                    Container(
                        margin: const EdgeInsets.only(top: 30.0, bottom: 40.0),
                        child: Align(
                        alignment: Alignment.center, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                        child: Text(    //añadir texto
                            "Yo Soy",
                            style: new TextStyle(
                            fontSize:30.0,
                            color: const Color(0xFF000000),
                            fontFamily: "Open Sans",
                            ),
                        ),
                        ),
                    ),

                    Container(
                        margin: const EdgeInsets.only(top: 5.0, bottom: 15.0),
                        child: 
                    // Boton de Estudiante
                    SizedBox(
                        width: double.infinity,
                        // height: double.infinity,
                        child: RaisedButton(
                        child: Text('Estudiante'),
                        color: Color.fromRGBO(143, 20, 27, 1.0),
                        textColor: Color.fromRGBO(223, 212, 166, 1.0),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => RegistryStudent()),
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