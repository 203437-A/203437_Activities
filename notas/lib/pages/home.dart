
import 'package:flutter/material.dart';
import 'package:notas/modelos/nota.dart';
import 'package:notas/servicios/userServices.dart';

class Home extends StatefulWidget {
 
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Notas'),
      actions: [IconButton(onPressed:(){setState(() {
        
      });} , icon: const Icon(Icons.refresh) )],),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/segundo');

          //-----ANTIGUOOOO------
        //   showModalBottomSheet(
        //     context: context, 
        //     builder: (BuildContext context) {
        //     return  const ModalNuevaNota();
        //   }
        // );
      },
        child: const Icon(Icons.add),
      ),
      body: FutureBuilder(
        future:  UserServices().getNotas(),
        builder: (BuildContext context, AsyncSnapshot<List> snapshot){
          List misNotas = snapshot.data ?? [];
          return ListView(
            children: [
              for (Nota nota in misNotas)
              ListTile(
                title: Text(nota.titulo!),
                subtitle: Text(nota.contenido!),
              ),
            ],
          );
        }
      )
    );
  }
}


// class ModalNuevaNota extends StatefulWidget {
//   const ModalNuevaNota({super.key});

//   @override
//   State<ModalNuevaNota> createState() => _ModalNuevaNotaState();
// }

// class _ModalNuevaNotaState extends State<ModalNuevaNota> {
//   final TextEditingController _titleController =  TextEditingController();

//   final TextEditingController _contentController =  TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),

//       color: Colors.amber,
//       child:  Form(child: Column(
//         children: [
//           TextFormField(
//             controller: _titleController,
//             decoration: const InputDecoration(labelText: 'Título'),
//           ),
//           TextFormField(
//             controller: _contentController,
//             decoration: const InputDecoration(labelText: 'Contenido'),
//             maxLines: 10,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               ElevatedButton(onPressed: () {
//                 Navigator.pop(context);
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   const SnackBar(content: Text('Correcto'),)
//                 );
//               }, child: const Text('Aceptar'),
//               ),
//               const SizedBox(width: 10,),
//               ElevatedButton(onPressed: () {
//                 Navigator.pop(context);
//               }, child: const Text('Cancelar'),
//               )
//             ],
//           )
//         ],
//       ),),
//     );
//   }

//   @override
//   void dispose(){
//     _contentController.dispose();
//     _titleController.dispose();
//     super.dispose();
//   }
// }