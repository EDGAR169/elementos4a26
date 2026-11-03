import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 2',
        style: TextStyle(color: Colors.cyanAccent)),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            mostrarImagen(1),
            SizedBox(width: 20),
            mostrarImagen(2),
            SizedBox(width: 20),
            mostrarImagen(3)
          ],
        ),
      ),
    );
  }


  Widget mostrarImagen(int numImagen){
    String nombreImagen = '';

    switch (numImagen){
      case 1: 
        nombreImagen= 'assets/imgs/img1.png';
        break;
      case 2: 
        nombreImagen= 'assets/imgs/img2.png';
        break;
      case 3: 
        nombreImagen= 'assets/imgs/img3.png';
      break;
    }
    return Image.asset(
      nombreImagen,
      width: 100,
      height: 100,
      fit: BoxFit.fill,
    );

  }
}