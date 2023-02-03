import 'package:flutter/material.dart';


class View2 extends StatelessWidget{
  const View2({super.key});
  
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      body: Center (
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 150.0,
              width: 250.0,
              child: Image.asset('assets/img/img1.png'),
            ),
            const Text('Volcan haciendo erupción', style: TextStyle(fontSize: 20) ,),
            SizedBox(
              height: 150.0,
              width: 250.0,
              child: Image.asset('assets/img/img2.jpg'),
            ),
            const Text('Paisaje', style: TextStyle(fontSize: 20) ,),
             SizedBox(
              height: 150.0,
              width: 250.0,
              child: Image.asset('assets/img/img3.png'),
            ),
            const Text('Buho', style: TextStyle(fontSize: 20) ,),
          ]
        ,) 
      ),
    );
     
  }


}