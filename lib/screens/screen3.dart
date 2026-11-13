import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  final Map<String, String> perros = const {

    'Ginger': 'assets/imgs/img1.png',
    'KC' : 'assets/imgs/img2.png',
    'Nahoshi': 'assets/imgs/img3.png',
    'Josue' : 'assets/imgs/img4.jpg',
    'Oscar' : 'assets/imgs/img5.png' ,
    'Aldo' : 'assets/imgs/pibble.jpg',
  };

  final Map<String, String> cats = const{
   
    'kity ': 'assets/imgs/cat0.png',
    'Muso' :'assets/imgs/cat1.png',
    'Astra' :'assets/imgs/cat2.png',
  };
  


  


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
               const Color.fromARGB(255, 179, 12, 12)
               );
          }),
          
          Divider(), 
          ...cats.entries.map((cat){
            return _tileCat(
              cat.key,
              cat.value,
              Colors.blueAccent,
              Colors.redAccent,
              const Color.fromARGB(255, 179, 12, 12)  );
          })
          
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
            tileColor: Color.fromARGB(23, 68, 66, 68),
            iconColor: Color.fromARGB(255, 41, 1, 152),
            textColor: Color.fromARGB(255, 6, 159, 134),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),

          );
          final espacio = SizedBox(height: 10,);
          return Column(children: [tile,espacio]);

  }
  Widget _tileCat(
    String catName,
    String catImage,
    Color tileColor,
    Color iconColor,
    Color textColor,
  ){
    final tile = ListTile(
            leading: Icon( Icons.pets),// tipo de icon
            title:Align( alignment:  Alignment.centerLeft, child: Image.asset(catImage,width: 50, height: 50, )),
            subtitle: Text(catName),
            trailing: Icon( Icons.arrow_forward),
            tileColor: Color.fromARGB(18, 32, 27, 27),
            iconColor: Color.fromARGB(255, 46, 13, 112),
            textColor: Color.fromARGB(255, 2, 67, 56),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),

          );
          final espacio = SizedBox(height: 10,);
          return Column(children: [tile,espacio]);

  }
}