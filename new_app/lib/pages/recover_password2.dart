import 'package:flutter/material.dart';

class RecoverPassword2 extends StatelessWidget {
  const RecoverPassword2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:  AppBar(
          backgroundColor: const Color(0xFF47197C),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: const Color(0xFFD83A6F),
            onPressed: () => Navigator.pop(context),
          ),
          actions: [
            IconButton(
              icon: Image.asset(
                'assets/img/logo.jpg',
                width: 60,
                height: 60,
              ),
              color: const Color(0xFFD83A6F),
              onPressed: () {},
            ),
          ],
          title: const Text(
            'Recuperar contraseña',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              // fontWeight: FontWeight.bold,
            ),
          ),    
        ),
      body: ListView(
        children: const [
          Padding (
            padding:  EdgeInsets.only(top: 20, left: 20, right: 20),
            child: ListRegister(),
          ),
        ],
      ),
    );
  }
}

class ListRegister extends StatelessWidget {
  const ListRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding:  EdgeInsets.only(top: 20,bottom: 60, right: 60),
          child:  Text(
            'Por seguridad tu contraseña debe tener una longitud de entre 8 y 15 caracteres, usar mayúsculas, minúsculas, contener por lo menos un número y un caracter especial ',
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        const Padding(
          padding:  EdgeInsets.only(right: 255, bottom: 10),
          child: Text('Nueva contraseña', style: TextStyle(fontWeight: FontWeight.bold),),
        ),
         Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: TextField(
            decoration: InputDecoration( 
              hintText: 'Nueva contraseña',

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0)
              ),
            ),
          ),
        ),
        const Padding(
          padding:  EdgeInsets.only(right: 185, bottom: 10),
          child: Text('Confirmar nueva contraseña', style: TextStyle(fontWeight: FontWeight.bold),),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 260),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Confirma tu nueva contraseña',
 
               border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0)
              ),
            ),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 119, 147, 87),
                shadowColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                fixedSize: const Size(350, 50)
              ), 
              onPressed: () {  },
              child:const Text(
                'Actualizar contraseña',
                style: TextStyle(fontSize: 15, 
                fontWeight: FontWeight.bold,
                color: Colors.white),
              ),
        ),
      ],
    );
  }
}
