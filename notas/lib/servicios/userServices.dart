

import 'package:firebase_database/firebase_database.dart';
import 'package:notas/modelos/nota.dart';

class UserServices{
  get key => key;
  
  get value => value;

  Future<List<Nota>> getNotas() async{
    List<Nota> misNotas= [];
        try {
          return misNotas;
    
    // DatabaseReference ref = FirebaseDatabase.instance.ref("notas/body");
    // DatabaseEvent event = await ref.once();
    // print(event.snapshot.value);
    // return misNotas;

  
    //   DataSnapshot snap = await FirebaseDatabase.instance.reference().child('notas').once();
    // if (snap.value != null) {
    //   snap.value.forEach((key, value) {
    //     Map mapa = {'key': key, ...value};
    //     Nota nuevaNota = Nota(
    //         contenido: mapa['body'],
    //         key: mapa['key'],
    //         titulo: mapa['title']);
    //     misNotas.add(nuevaNota);
    //   });


      // DataSnapshot snap= await FirebaseDatabase.instance.reference().child('notas').once();
      // if (snap.exists) {
      //   snap.value.forEach((key, value)){
      //     Map mapa = {'key': key, ...value};
      //     Nota nuevaNota = Nota(
      //       contenido: mapa['body']
      //       key: mapa['key'],
      //       titulo: mapa['title']
      //     );
      //   misNotas.add(nuevaNota);
      //   print(snap.value);
      //   };
        
      // }
      // return misNotas;
    } catch (e) {
      return misNotas;
    }
  }
  Future<bool> saveNotas(String titulo, String contenido) async{
    try {
      await FirebaseDatabase.instance.reference().child('notas').push().set({
        'title': titulo,
        'body': contenido
      });
      return true;
    } catch (e) {
      print(e);
      return false;
    }
    

  }
}