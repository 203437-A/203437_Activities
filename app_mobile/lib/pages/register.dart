
import 'package:flutter/material.dart';
import 'package:login/pages/login.dart';


class Register extends StatelessWidget {
  const Register({super.key});
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
            'Regístrate',
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
          padding:  EdgeInsets.only(top: 20,bottom: 30, right: 60),
          child:  Text(
            'Crea una cuenta para empezar a usar la app',
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey,
              fontWeight: FontWeight.bold
              
            ),
          ),
        ),
        const Padding(
          padding:  EdgeInsets.only(right: 300),
          child: Text('Nombre', style: TextStyle(fontWeight: FontWeight.bold),),
        ),
         Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 20),
          child: TextField(
            decoration: InputDecoration( 
              hintText: 'Nombre completo',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0)
              ),
            ),
          ),
        ),
        const Padding(
          padding:  EdgeInsets.only(right: 250, bottom: 5),
          child: Text('Correo electrónico', style: TextStyle(fontWeight: FontWeight.bold),),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
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
          padding:  EdgeInsets.only(right: 290, bottom: 5),
          child: Text('Contraseña', style: TextStyle(fontWeight: FontWeight.bold),),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Contraseña',
               border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0)
              ),
            ),
          ),
        ),
        const Padding (
          padding: EdgeInsets.only(left: 25.0, bottom: 40),
          child: Text ('La contraseña debe contener caracteres, números y simbolos con un minimo de 6 caracteres.',
          style: TextStyle(
                color: Colors.grey,
                fontSize: 12.0,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio(value: 0, groupValue: 1, onChanged: (value){}),
              const SizedBox(
                width: 300,
                child:  Text(' Al registrarme, acepto los términos y condiciones y la politica de provacidad'))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 119, 147, 87),
                  shadowColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  fixedSize: const Size(350, 50)
                ), 
                onPressed: () {  },
                child:const Text(
                  'Crear cuenta',
                  style: TextStyle(fontSize: 15, 
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
                ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50.0),
          child: Row(
            children:  [
              const Text('¿Ya tienes una cuenta?'),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: InkWell(
                  child: const Text(
                    'Iniciar sesión',
                    style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold)     
                  ),
                  onTap: () {
                     Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Login()),
                      );  
                  },
                ),
              ),
            ],
          ),
        ),

      ],
    );
  }
}
