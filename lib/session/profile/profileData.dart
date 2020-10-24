import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../style/fondocolor.dart';

class DatosPerfil extends StatefulWidget {
  @override
  _DatosPerfilState createState() => _DatosPerfilState();
}

class _DatosPerfilState extends State<DatosPerfil> {

  @override
  Widget build(BuildContext context) {
    return TablaPrincipal();
  }
}

class TablaPrincipal extends StatelessWidget {
  
  const TablaPrincipal({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String nameUser = 'William';
    String lastNameUser = 'Otalora';
    String idUser = '123456789';
    int ageUser = 21;
    String dateUser = '25';
    String placeUser = 'Neiva';
    String sexUser = 'Masculino';
    int phoneUser = 3186145189;
    String nameEps = 'Sanitas';
    String nameAdvisor = 'Carlos';
    int phoneAdvisor = 3186145189;

    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenido'),
      ),
      body: new Stack(
        children: <Widget>[
          new FondoColor(),
          
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
                          "Informacion Perfil",
                          style: new TextStyle(
                            fontSize:30.0,
                            color: const Color(0xFF000000),
                            fontFamily: "Open Sans",
                          ),
                        ),
                      ),
                    ),

                    Container(
                      color: Colors.white,
                      margin: new EdgeInsets.all(20.0),
                      child: Table(
                          border:TableBorder.all(),
                          columnWidths: {
                            0: FractionColumnWidth(0.3),
                            1: FractionColumnWidth(0.7),
                          },
                          children: [
                            TableRow(
                              children: [
                                new Text('Cedula'),
                                new Text(idUser),
                              ]
                            ),
                            TableRow(
                              children: [
                                new Text('Nombres'),
                                new Text(nameUser),
                              ]
                            ),
                            TableRow(
                              children: [
                                new Text('Apellidos'),
                                new Text(lastNameUser),
                              ]
                            ),
                            TableRow(
                              children: [
                                new Text('Edad'),
                                new Text(ageUser.toString()),
                              ]
                            ),
                            TableRow(
                              children: [
                                new Text('Fecha de nacimiento'),
                                new Text(dateUser),
                              ]
                            ),
                            TableRow(
                              children: [
                                new Text('Lugar de nacimiento'),
                                new Text(placeUser),
                              ]
                            ),
                            TableRow(
                              children: [
                                new Text('Sexo'),
                                new Text(sexUser),
                              ]
                            ),
                            TableRow(
                              children: [
                                new Text('Celular'),
                                new Text(phoneUser.toString()),
                              ]
                            ),
                            TableRow(
                              children: [
                                new Text('Eps'),
                                new Text(nameEps),
                              ]
                            ),
                            TableRow(
                              children: [
                                new Text('Acudiente'),
                                new Text(nameAdvisor),
                              ]
                            ),
                            TableRow(
                              children: [
                                new Text('Telefono acudiente'),
                                new Text(phoneAdvisor.toString()),
                              ]
                            ),
                          ],
                      )
                    ),
                  ],
                ),
              )
            )
          )
        ]
      )
    );
  }
}