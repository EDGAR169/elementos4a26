import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  final memes = const [
    'MEME1',
    'MEME2',
    'MEME3',
    'MEME4',
  ];
  

  final cats = const [
    'CAT1',
    'CAT2',
    'CAT3',
    'CAT4',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar (title: Text(' Ventana 3'),),
      body: ListView(
        children: [
          ...memes.map((meme)=>ListTile(
            leading: Icon(Icons.pets_rounded), // tipo de icon
            title: Text(meme),
            subtitle: Text('Que le dijo un pato a otro pato'),
            trailing: Icon( Icons.arrow_forward),
            tileColor: Color.fromARGB(196, 247, 246, 247),
            iconColor: Color.fromARGB(255, 68, 8, 235),
            textColor: Color.fromARGB(233, 7, 39, 243),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),

          ),
          ),
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
}