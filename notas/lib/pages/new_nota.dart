
import 'package:flutter/material.dart';
import 'package:notas/servicios/userServices.dart';

class ModalNuevaNota extends StatefulWidget {
  const ModalNuevaNota({super.key});

  @override
  State<ModalNuevaNota> createState() => _ModalNuevaNotaState();
}

class _ModalNuevaNotaState extends State<ModalNuevaNota> {
  final TextEditingController _titleController =  TextEditingController();

  final TextEditingController _contentController =  TextEditingController();

  final GlobalKey<FormState> _formularioKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        //  color: Colors.amber,
        child:  Form(
          key: _formularioKey,
        child: SingleChildScrollView(
          child: Column(
          children: [
            TextFormField(
              controller: _titleController,
              decoration: const InputDecoration(labelText: 'Título'),
              validator: (String? dato) {
                if (dato!.isEmpty){
                  return 'Este campo es requerido';
                }
              },
            ),
            TextFormField(
              controller: _contentController,
              decoration: const InputDecoration(labelText: 'Contenido'),
              maxLines: 2,
              validator: (String? dato) {
                if (dato!.isEmpty){
                  return 'Este campo es requerido';
                }
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(onPressed: (
    

                ) async{
                  if ( _formularioKey.currentState!.validate()) {
                    bool respuesta =await UserServices().saveNotas(
                      _titleController.text, 
                      _contentController.text
                    );
                    if(respuesta){
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Se ha agregado la nueva nota'),
                        backgroundColor: Colors.green,
                        )
                      );
                    }
                    else {
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Error al agregar la nueva nota'),
                        backgroundColor: Colors.red,
                        )
                      );
                    }
                  }
                }, child: const Text('Aceptar'),
                ),
                const SizedBox(width: 10,
                ),
                ElevatedButton(onPressed: () {
                  Navigator.pop(context);
                }, child: const Text('Cancelar'),
                )
              ],
            )
          ],
      ),
        ),),
      ),
    );
  }

  @override
  void dispose(){
    _contentController.dispose();
    _titleController.dispose();
    super.dispose();
  }
}