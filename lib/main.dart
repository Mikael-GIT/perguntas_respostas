import 'package:flutter/material.dart';

void main() {
  runApp(PerguntasApp());
}

class PerguntaAppState extends State<PerguntasApp> {
    var perguntaSelecionada = 0;

    void responder(){
      setState(() {
        perguntaSelecionada++; //setState é usado para ficar monitorando a mudança e vai alterar na aplicação. 
      });
      print(perguntaSelecionada);
    }

  @override
  Widget build(BuildContext context) {

    final List<String> perguntas = [
      'Qual é a sua cor preferida?',
      'Qual é o seu animal favorito?'
    ]; 
    

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
      body: Column(
        children: <Widget> [
           Text(perguntas.elementAt(perguntaSelecionada)),
           RaisedButton(child: Text('Resposta 1'), onPressed: responder),
           RaisedButton(child: Text('Resposta 2'), onPressed: responder),
           RaisedButton(child: Text('Resposta 3'), onPressed: responder)
        ],
      ),
      )
    );
  }
   
}

class PerguntasApp extends StatefulWidget {
  PerguntaAppState createState(){
    return PerguntaAppState();
  }
}
