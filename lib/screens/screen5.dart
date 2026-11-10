import 'package:flutter/material.dart';

class Screen5 extends StatefulWidget {
  const new({super.key});

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen5')),
      body: Column(
        mainAxisAlignment:MainAxisAlignment.spaceEvenly,
      children: [
        Text('Entrada de datos'),
        //Llamadas a lols widgeht de entrrada de datos
      ],
      )
      
    );
  }

  TextField _entradaTexto (){
    return TextField(
      decoration: InputDecoration(
        labelText: 'Nombre',
        hintText: 'Ingresa tu nombre',
        border: OutlineInputBorder(),  
      ),

    );
    
  }
}