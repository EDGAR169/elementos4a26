import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  final Map<String, String> perros = const {

    'Ginger': 'assets/imgs/img1.png',
    'KC' : 'assets/imgs/img2.png',
    'Nahoshi': 'assets/imgs/img3.png',
    'Nicky' : 'assets/imgs/img4.jpg',
    'Josue' : 'assets/imgs/img5.png' ,
    'Aldo' : 'assets/imgs/pibble.jpg',
  };

  final cats = const ['CAT1','CAT2','CAT3','CAT4',];


  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar (title: Text(' Ventana 3'),),
      body: ListView(
        children: [
          ...perros.entries.map((perro){
            return _tileDog(
              perro.key,
               perro.value,
               Colors.blueAccent,
               Colors.redAccent,
               Colors.white
               );
          }),
          
          Divider(), 
          ...cats.map((cat)=>ListTile(
            leading: Icon(Icons.pets_rounded), // tipo de icon
            title: Text(cat),
            subtitle: Text('Tamos enpatados'),
            trailing: Icon( Icons.arrow_forward),
            tileColor: Color.fromARGB(197, 233, 229, 240),
            iconColor: Color.fromARGB(214, 223, 16, 16),
            textColor: Color.fromARGB(233, 7, 39, 243),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            

          ),
          ),
          
        ],
      ),
    );
  }

  Widget _tileDog(
    String dogName,
    String dogImage,
    Color tileColor,
    Color iconColor,
    Color textColor,
  ){
    final tile = ListTile(
            leading: Image.asset(dogImage, width: 50, height: 50), // tipo de icon
            title: Text(dogName),
            subtitle: Text('Que le dijo un pato a otro pato'),
            trailing: Icon( Icons.arrow_forward),
            tileColor: Color.fromARGB(196, 247, 246, 247),
            iconColor: Color.fromARGB(255, 68, 8, 235),
            textColor: Color.fromARGB(233, 7, 39, 243),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),

          );
          final espacio = SizedBox(height: 10,);
          return Column(children: [tile,espacio]);

  }
}