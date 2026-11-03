import 'package:flutter/material.dart';
import 'package:mi_empty_aplication/screens/Screen3.dart';
import 'package:mi_empty_aplication/screens/Screen4.dart';
import 'package:mi_empty_aplication/screens/screen2.dart'; //stles

class Screen1 extends StatelessWidget {
  const Screen1({super.key});





  @override
  Widget build(BuildContext context) {
    return  
    Scaffold(


      appBar: AppBar(
        title: const Text('Pantalla 1',
        style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(192, 16, 14, 122)),
      
      //AppBar
      
      body: Container(
          color: Color.fromARGB(255, 10, 7, 68),
          child: Center(
            child: Column (
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text( 
                  'Selecciona una opcion :',
                style:TextStyle(fontSize: 24,
                fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                boton('Ejemplo de Rows', const Color.fromARGB(255, 211, 20, 160),context, Screen2()),
                SizedBox(height: 20),
                boton('Ejemplo de ListReview', const Color.fromARGB(255, 71, 19, 214), context, Screen3()),
                SizedBox(height: 20),
                boton('Entradas de datos', const Color.fromARGB(255, 200, 14, 33), context, Screen4()),
            
              ],),
          ),
        ),
    );
  }
  Widget boton (String texto,
   Color color1,
   BuildContext context,
   StatelessWidget screen,
   ){
    return ElevatedButton (
      onPressed:(){
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) => screen));
      }, 
      
        style: ElevatedButton.styleFrom(
          backgroundColor: color1,
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),//Espacio de borde de boton (Margen)
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          )
        ),
        child: Text(
        texto,
        style:TextStyle(
          color: Colors.white,
          fontSize:20,
        ),),

    );

  }
}