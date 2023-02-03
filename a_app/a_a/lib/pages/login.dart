

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 200, left: 20, right: 20),
        child: Column(
          children: [ 
            SizedBox(
              width: 200,
              height: 200,
              child: Image.asset('assets/img/img3.png'),
            ),
            
            const Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: TextField( 
                decoration: InputDecoration(hintText: 'Email'),
            ),
          ), 
          const Padding(
            padding: EdgeInsets.only(bottom: 30),
            child: TextField(
                obscureText: true, 
                decoration: InputDecoration(hintText: 'Email'),
            ),
          ),
          ElevatedButton(onPressed: (){}, child: const Text('Aceptar'))
          ],
          ),
      ),
        ) ,
    );
  }
}