// import 'package:flutter/material.dart';

// class View1 extends StatelessWidget {
//   const View1({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Row(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(top: 200)),
//                 children: const [
//                   Text('Aleff', style: TextStyle(fontSize: 30, color: Colors.blue), 
//                   ),
//                    Text('Aleff', style: TextStyle(fontSize: 30, color: Colors.blue), 
//                   ),
//                    Text('Aleff', style: TextStyle(fontSize: 30, color: Colors.blue), 
//                   ),
//                 ],
              
//             ),
    
//           ],
          
//         ),
//       ),
//     ) ;
//   }
// }


import 'package:flutter/material.dart';

class View1 extends StatelessWidget{
  const View1({super.key});
  
  @override
  Widget build (BuildContext context) {
     return Scaffold(
      body: Center (
        child: Padding(
          padding: const EdgeInsets.only(top: 390),
          child: Column(
            children: const [
              Text('Ángel Michael Gómez Herrera', style: TextStyle(fontSize: 20) ,),
              Text('Mi edad es de 20 años', style: TextStyle(fontSize: 20) ,),
              Text('angelherrera.ah1616@gmail.com', style: TextStyle(fontSize: 20) ,),
            ]
          ,),
        ) 
      ),
    );
     
  }


}

