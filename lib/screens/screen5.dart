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
 int radioSelected =0;

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
        _entradaRadio(),
        //Llamadas a lols widgeht de entrrada de datos
      ],
      )
      
    );
  }

  TextField _entradaTexto (){
    return TextField(
      controller: _textController,//Controlador para controlar la caja de texto 
      obscureText: false,
      maxLength: 100,
      maxLines: 3,
      decoration: InputDecoration(
        labelText: 'Nombre',
        hintText: 'Ingresa tu nombre',
        border: OutlineInputBorder (),  
      ),
//input decoration para los estilos de la caja de texto
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

  Column _entradaRadio(){
    final ListTile kotlin = ListTile(
      title: const Text ('kotlin'),
      leading: Transform.scale(
        scale: 1.5,
        child: Radio(
          value:1,
          groupValue: radioSelected,
          onChanged: (value){
            setState(() {
              radioSelected = value!;
              print('Seleccion del boton radio: $radioSelected');
            });
          },
        )),
    );

    final ListTile flutter = ListTile(
      title: const Text ('Flutter'),
      leading: Transform.scale(
        scale: 1.5,
        child: Radio(
          value:2,
          groupValue: radioSelected,
          onChanged: (value){
            setState(() {
              radioSelected = value!;
              print('Seleccion del boton radio: $radioSelected');
            });
          },
        )),
    );
    final ListTile react = ListTile(
      title: const Text ('React native'),
      leading: Transform.scale(
        scale: 1.5,
        child: Radio(
          value:3,
          groupValue: radioSelected,
          onChanged: (value){
            setState(() {
              radioSelected = value!;
              print('Seleccion del boton radio: $radioSelected');
            });
          },
        )),
    );


    return Column(
      children: [
        Text('¿Que prefieres para desarrollo movil?'),
        kotlin,
        flutter,
        react
      ],
    );
    
  }
}