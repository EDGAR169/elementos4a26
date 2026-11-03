import 'package:flutter/material.dart';
import 'package:mi_empty_aplication/screens/screen1.dart';
import 'package:mi_empty_aplication/screens/screen3.dart';




import 'screens/screen2.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(



      debugShowCheckedModeBanner: false,//Quitar la etiqueta de debug


      title:'Proyecto 1',



      home: Screen1(),// Que ventana se muestra al inicio
    );
  }
}
