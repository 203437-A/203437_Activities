import 'package:flutter/material.dart';
import 'package:login/pages/register.dart';
// import 'package:login/pages/register.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/img/fondo.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 30, right: 30),
              child: Column(
                children: [
                  SizedBox(
                    width: 200,
                    height: 200,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100.0),
                      child: Image.asset('assets/img/img3.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 45, bottom: 30),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Email',
                        labelText: 'Email',
                        suffixIcon: const Icon(Icons.verified_user),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        labelText: 'Password',
                        suffixIcon: const Icon(Icons.lock_clock_outlined),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                      ),
                    ),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Iniciar sesion',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )),
                  const Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text('¿No tiene una cuenta?'),
                  ),
                  InkWell(
                    child: const Text(
                      'Crear cuenta',
                      style:
                          TextStyle(color: Color.fromARGB(255, 133, 47, 148)),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Register()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
