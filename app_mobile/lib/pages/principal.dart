
import 'package:flutter/material.dart';
import 'package:login/pages/login.dart';
import 'package:login/pages/register.dart';
import 'package:login/pages/register_button.dart';

class Principal extends StatelessWidget {
  const Principal({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
            child: Column(
              children: [
                SizedBox(
                  width: 250,
                  height: 250,
                  child: ClipRRect(
                    child: Image.asset('assets/img/logo.jpg'),
                  ),
                ),
                
               RegisterButton(
                text: 'Continuar con Google',
                onTapCallback: (

                ) {},
                color: const Color(0xFF4068EC),
                color_cont: const Color(0xFF4068EC),
                colorText: Colors.white,
                img_icon: Image.asset(
                  'assets/img/google.png',
                  width: 20,
                  height: 20,
                ),
              ),

              const SizedBox(height: 20),

              // boton de registrarse con facebook
              RegisterButton(
                text: 'Continuar con Facebook',
                onTapCallback: () {},
                color: const Color(0xFF384F9F),
                color_cont: const Color(0xFF384F9F),
                colorText: Colors.white,
                img_icon: Image.asset(
                  'assets/img/facebook.png',
                  width: 20,
                  height: 20,
                ),
              ),

              const SizedBox(height: 20),

              // boton de registrarse con correo electronico
              RegisterButton(
                text: 'Registrarse con e-mail',
                onTapCallback: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Register(),
                    ),
                  );
                },
                color: Colors.white,
                color_cont: const Color(0xFF62676D),
                colorText: const Color(0xFF62676D),
                img_icon: Image.asset(
                  'assets/img/email.png',
                  width: 20,
                  height: 20,
                ),
              ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0 ,bottom: 15.0),
                  child: InkWell(
                    child: const Text(
                      'Entrar como invitado',
                      style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)     
                    ),
                    onTap: () {
                      
                    },
                  ),
                ),
                InkWell(
                  child: const Text(
                    'Entrar como vendedor',
                    style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)     
                  ),
                  onTap: () {
                    
                  },
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 50.0, top: 40.0),
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
            ),
          ),
        ],
      ),
    );
  }
}
