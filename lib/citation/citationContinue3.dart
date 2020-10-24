import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
//import '../style/fondocolor.dart';
import 'package:english_words/english_words.dart';

class CitationContinue3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'App',
      home: CitationList(),
    );
  }
}

class CitationList extends StatefulWidget {
  @override
  _CitationListState createState() => _CitationListState();
}

class _CitationListState extends State<CitationList> {
  final _suggestion = <WordPair>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(249, 246, 237, 1.0),
        title: Text('Estudiante'),  //Titulo de la barra superior
      ),
      body: _buildSuggestions(),
    );
  }
  
  Widget _buildSuggestions(){
    return ListView.builder(
      padding: EdgeInsets.all(16.0),
      itemBuilder: (context, i){
        if(i >= _suggestion.length){
          _suggestion.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestion[i]);
      },
    );
  }

  Widget _buildRow (WordPair pair){
    return ListTile(
        title: Text(pair.asPascalCase),
      );
  }
}