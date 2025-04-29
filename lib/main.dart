import 'package:flutter/material.dart';


void main(List<String> args) {
  runApp(CalculadoraApp());
}

class CalculadoraApp extends StatefulWidget {
  const CalculadoraApp({super.key});

  @override
  State<CalculadoraApp> createState() => _CalculadoraAppState();
}

class _CalculadoraAppState extends State<CalculadoraApp> {
  double alto = 0.0;
  double ancho = 0.0;
  @override
  Widget build(BuildContext context) {
    alto = MediaQuery.of(context).size.height;
    ancho = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            _cabecero()
          ],
        )
      ),
    );
  }

  Widget _cabecero()
  {
    return Container(
      height: alto * 0.30, // ocupa el 30% del alto de la pantalla
      width: ancho,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
              SizedBox(
                width: ancho,
                child: Text('1 + 2 + 31 + 2 + 3+400+3000+1234',style: TextStyle(fontSize: 30),textAlign: TextAlign.end,)),
              SizedBox(
                width: ancho,
                child: Padding(
                  padding:EdgeInsets.only(right: 20),
                  child: Text('6',style:TextStyle(fontSize: 28,color:Colors.grey.shade800),textAlign: TextAlign.end,)))
          ],
        ),
      );
  }
}