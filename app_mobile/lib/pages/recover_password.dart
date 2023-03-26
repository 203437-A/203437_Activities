
import 'package:flutter/material.dart';
import 'package:login/pages/recover_password2.dart';



class RecoverPassword extends StatelessWidget {
  const RecoverPassword({super.key});
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
            padding:  EdgeInsets.only( left: 20, right: 20),
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
          padding:  EdgeInsets.only(top: 40,bottom: 50, right: 30),
          child:  SizedBox(
            width: 340,
            child: Text(
              'Ingresa tu email para reestablecer tu contraseña',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
                fontWeight: FontWeight.bold
                
              ),
            ),
          ),
        ),
        const Padding(
          padding:  EdgeInsets.only(right: 250, bottom: 10),
          child: Text('Correo electrónico', style: TextStyle(fontWeight: FontWeight.bold),),
        ),
         Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: TextField(
            decoration: InputDecoration( 
              hintText: 'Dirección de correo',

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0)
              ),
            ),
          ),
        ),
        const Padding(
          padding:  EdgeInsets.only( left: 20,bottom: 380),
          child: Text('Ingrese su correo electrónico registrado y le enviaremos un correo electrónico que contiene un enlace para restablecer su contraseña.',
          style: TextStyle(
              fontSize: 12,
              color: Colors.grey,       
            ),
          ),
        ),
        
        ElevatedButton(
          style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 119, 147, 87),
                shadowColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                fixedSize: const Size(350, 50)
              ), 
              onPressed: () {  
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RecoverPassword2()),
                );
              },
              child:const Text(
                'Enviar solicitud',
                style: TextStyle(fontSize: 15, 
                fontWeight: FontWeight.bold,
                color: Colors.white),
              ),
        ),
      ],
    );
  }
}
