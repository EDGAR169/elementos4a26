import 'package:flutter/material.dart';

class Screen5 extends StatefulWidget {
  const new({super.key});

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
 //variables para almacenar los valores de entrada
 bool _switchValue = false;
 double _sliderValue = 0.0;
 TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen5')),
      body: Column(
        mainAxisAlignment:MainAxisAlignment.spaceEvenly,
      children: [
        Text('Entrada de datos'),
        _entradaTexto(),
        _entradaSwitch(),
        _entradaSlider(),
        //Llamadas a lols widgeht de entrrada de datos
      ],
      )
      
    );
  }

  TextField _entradaTexto (){
    return TextField(
      controller: _textController,
      decoration: InputDecoration(
        labelText: 'Nombre',
        hintText: 'Ingresa tu nombre',
        border: OutlineInputBorder(),  
      ),

      onChanged: (value){
        print(  'Valor del TextFiled: $value');
      },

    );
    
  }


  Row _entradaSwitch (){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text('¿Te gusta flutter?'),
        Switch(
          value: _switchValue,
          onChanged: (value){
            setState(() {
              _switchValue = value;
              print('El valor de Switch es: $_switchValue');
            });
              
          },
        ),

      ],
    );
  }

  Column _entradaSlider (){
    return Column(
      children: [
        Text('Que tranto te gusta flutter?:'),
        Slider(
          min: 0.0,
          max: 100.0,
          activeColor: Colors.purple,
          thumbColor: const Color.fromARGB(255, 25, 2, 99),
          value: _sliderValue,
          divisions: 10,
          label: '${_sliderValue.round()}',
          onChanged: (value){
            setState(() {
              _sliderValue = value;
              print('Se cambio el slider: $_sliderValue ');
            });
          }
        ),
      ],
    );
  }
}