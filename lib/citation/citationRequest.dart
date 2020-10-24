import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../style/fondocolor.dart';
import 'citationContinue2.dart';

class SolicitudCita extends StatefulWidget {
  @override
  _SolicitudCitaState createState() => _SolicitudCitaState();
}

class _SolicitudCitaState extends State<SolicitudCita> {
  bool _checkedLunes = false;
  bool _checkedMartes = false;
  bool _checkedMiercoles = false;
  bool _checkedJueves = false;
  bool _checkedViernes = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Estudiante'),  //Titulo de la barra superior
      ),
      body: new Stack(
          children: <Widget> [
              new FondoColor(), //definir el color de fondo
              new Container(
                margin: new EdgeInsets.all(20.0),
                child: Form(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        //Texto de complete su solicitud
                        Container(
                          margin: const EdgeInsets.only(top: 5.0, bottom: 10.0),
                          child: Align(
                              alignment: Alignment.center, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                              child: Text(    //añadir texto
                                  "Complete su solicitud",
                                  style: new TextStyle(
                                      fontSize:22.0,
                                      color: const Color(0xFF000000),
                                      fontFamily: "Open Sans",
                                  ),
                              ),
                          ),
                        ),

                        //Texto de citas de 3 a 6 pm
                        Container(
                          margin: const EdgeInsets.only(top: 5.0, bottom: 15.0),
                          child: Align(
                              alignment: Alignment.center, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                              child: Text(    //añadir texto
                                  "Las citas se agendan de 3:00 p.m. a 6:00 p.m.",
                                  style: new TextStyle(
                                      fontSize:18.0,
                                      color: const Color(0xFF000000),
                                      fontFamily: "Open Sans",
                                  ),
                              ),
                          ),
                        ),

                        //Texto de dia de preferencia
                        Container(
                          margin: const EdgeInsets.only(top: 5.0, bottom: 10.0),
                          child: Align(
                              alignment: Alignment.center, // Alinear a la izquierda (i.e .centerRight, centerLeft)
                              child: Text(    //añadir texto
                                  "Selecciones el día de preferencia para agendar su cita",
                                  style: new TextStyle(
                                      fontSize:18.0,
                                      color: const Color(0xFF000000),
                                      fontFamily: "Open Sans",
                                  ),
                              ),
                          ),
                        ),
                        //checkbox Lunes
                        new CheckboxListTile(
                                  title: Text('Lunes'),
                                  value: _checkedLunes, 
                                  onChanged: (bool value){
                                  setState(() {
                                    _checkedLunes = value;
                                  });
                                },
                                activeColor: Color.fromRGBO(143, 20, 27, 1.0),),
                        // checkbox Martes
                        new CheckboxListTile(
                                  title: Text('Martes'),
                                  value: _checkedMartes, 
                                  onChanged: (bool value){
                                  setState(() {
                                    _checkedMartes = value;
                                  });
                                    },
                                  activeColor: Color.fromRGBO(143, 20, 27, 1.0),),
                        new CheckboxListTile(
                                  title: Text('Miercoles'),
                                  value: _checkedMiercoles, 
                                  onChanged: (bool value){
                                  setState(() {
                                    _checkedMiercoles = value;
                                  });
                                },
                                activeColor: Color.fromRGBO(143, 20, 27, 1.0),),
                        new CheckboxListTile(
                                  title: Text('Jueves'),
                                  value: _checkedJueves, 
                                  onChanged: (bool value){
                                  setState(() {
                                    _checkedJueves = value;
                                  });
                                },
                                activeColor: Color.fromRGBO(143, 20, 27, 1.0),),
                        new CheckboxListTile(
                                  title: Text('Viernes'),
                                  value: _checkedViernes, 
                                  onChanged: (bool value){
                                  setState(() {
                                    _checkedViernes = value;
                                  });
                                },
                                activeColor: Color.fromRGBO(143, 20, 27, 1.0),),
                                Container(
                    child: SizedBox(
                    width: double.infinity,
                    child: RaisedButton(
                      child: Text('Solicitar cita'),
                      color: Color.fromRGBO(143, 20, 27, 1.0),
                      textColor: Color.fromRGBO(223, 212, 166, 1.0),
                      onPressed: (){
                        Navigator.push(
                            context,
                            CupertinoPageRoute(builder: (context) => CitationContinue2()),
                        );     
                            
                      },
                    )
                    )
                  )
                        

                      ],
                    )
                  )
                  )
              )
          ]
      ),
    );
  }
}