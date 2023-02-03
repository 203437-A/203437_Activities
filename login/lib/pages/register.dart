import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});
  get gender => null;
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
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: ListRegister(gender: gender),
            ),
          ],
        ),
      ),
    );
  }
}

class ListRegister extends StatelessWidget {
  const ListRegister({
    Key? key,
    required this.gender,
  }) : super(key: key);

  // ignore: prefer_typing_uninitialized_variables
  final gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'REGISTER',
          style: TextStyle(
            fontSize: 50,
            fontFamily: 'TitanOne-Regular',
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10, bottom: 20),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Username',
              labelText: 'Username',
              
            ),
            
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Email',
              labelText: 'Email',
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'First name',
              labelText: 'First name',
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Phone',
              labelText: 'Phone',
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Password',
              labelText: 'password',
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Confirm Password',
              labelText: 'Confirm Password',
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 150,
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: DropdownButtonFormField(
                  validator: (value) =>
                      value == "Sexo" ? "campo requerido" : null,
                  value: gender,
                  items: ["Femenino", "Masculino", "Otro"]
                      .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          ))
                      .toList(),
                  onChanged: (Object? value) {},
                ),
              ),
            ),
            const SizedBox(
              width: 150,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Nacimiento',
                  labelText: 'Nacimiento',
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 150,
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              onPressed: () {},
              child: const Text(
                'Registrar',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
