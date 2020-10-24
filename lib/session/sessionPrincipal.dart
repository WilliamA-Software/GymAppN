import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../style/fondocolor.dart';
import 'constants.dart';

class SesionPrincipal extends StatefulWidget {
  @override
  _SesionPrincipalState createState() => _SesionPrincipalState();
}

class _SesionPrincipalState extends State<SesionPrincipal> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TablaPrincipal()
    
      
    );
  }
}

class TablaPrincipal extends StatelessWidget {
  
  const TablaPrincipal({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenido'),
        actions: <Widget>[
          PopupMenuButton<String>(
            itemBuilder: (BuildContext context){
              return Constants.choices.map((String choice){
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice), 
                );
                              }).toList();
            },
            onSelected: choiceAction,)
        ],
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
                          "Resumen",
                          style: new TextStyle(
                            fontSize:30.0,
                            color: const Color(0xFF000000),
                            fontFamily: "Open Sans",
                          ),
                        ),
                      ),
                    ),

                    Container(
                      margin: new EdgeInsets.all(30.0),
                      child: Table(
                        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                          
                          columnWidths: {
                            0: FractionColumnWidth(0.6),
                            1: FractionColumnWidth(0.4),
                          },
                          children: [
                            TableRow(
                              children: [
                                new Text('Rutina'),
                                new IconButton(
                                    icon: Icon(Icons.description),
                                    color: Colors.black,
                                    iconSize: 80.0,
                                    tooltip: 'Horario de rutina',
                                    onPressed: () {},
                                ),
                              ]
                            ),
                            TableRow(
                              children: [
                                new Text('Perfil'),
                                new IconButton(
                                    icon: Icon(Icons.account_box),
                                    color: Colors.black,
                                    iconSize: 80.0,
                                    onPressed: () {},
                                ),
                                
                              ]
                            ),
                            TableRow(
                              children: [
                                new Text('Recomendaciones'),
                                new IconButton(
                                    icon: Icon(Icons.assignment),
                                    color: Colors.black,
                                    iconSize: 80.0,
                                    onPressed: () {},
                                ),
                                
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

  void choiceAction(String choice){
    print('Selected');
  }
}