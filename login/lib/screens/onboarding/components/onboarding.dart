
import 'package:flutter/material.dart';
import 'package:login/screens/onboarding/components/content_boarding.dart';
import 'package:login/screens/onboarding/components/content_page.dart';

import '../../../pages/login.dart';


class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentPage = 0;
    PageController controller = PageController();
  List<Map<dynamic, dynamic>> boardingData = [
    {"image":"assets/img/B1.png", "title": "ESPARCIMIENTO","title2": "Brindamos todos los servicios para consentir a tu mascota"},
    {"image":"assets/img/B2.png", "title": "ADOPCIÓN",      "title2": "nulla faucibus tellus ut odio scelerisque vitae molestie lectus feugiat"},
    {"image":"assets/img/B3.png", "title": "HOSPITALIDAD",  "title2": "nulla faucibus tellus ut odio scelerisque vitae molestie lectus feugiat"},
    {"image":"assets/img/B4.png", "title": "VETERINARIA",   "title2": "nulla faucibus tellus ut odio scelerisque vitae molestie lectus feugiat"},
    {"image":"assets/img/B5.png", "title": "TIENDA",        "title2": "Compra todas las necesidades de tu mascota sin salir de casa"},
  ];

   void incrementCurrentPage() {
    if (currentPage < boardingData.length) {
          setState(() {
      currentPage += 1;
    });
    controller.jumpToPage(currentPage);
    } 
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
          flex: 2,
          child: Container(padding: const EdgeInsets.only(top:150),
          child: PageView.builder(
            controller: controller,
            itemBuilder: (context, index) => ContentBoarding(
              image: boardingData[index]['image'],
              title: boardingData[index]['title'],
              title2: boardingData[index]['title2'],
            ),
            itemCount: boardingData.length,
            onPageChanged: (value) {
              setState(() {
                currentPage = value;
              });
            },
          ),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: 
                    List.generate(boardingData.length, (index) => page(index: index, currentPage: currentPage),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 130), 
                  child: currentPage == boardingData.length - 1 ? ElevatedButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Login())
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(
                      width: 4,
                      color: Color.fromARGB(255, 131, 161, 97), 
                    ),
                    backgroundColor: const Color.fromARGB(255, 119, 147, 87),
                    shadowColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    fixedSize: const Size(240, 50)
                  ), 
                  child:const Text(
                    'Continuar',
                    style: TextStyle(fontSize: 15, 
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                  ),
                  )
                  : ElevatedButton(onPressed: incrementCurrentPage, style: ElevatedButton.styleFrom(
                    side: const BorderSide(
                      width: 2,
                      color: Color.fromARGB(255, 29, 29, 29),
                    ),
                    foregroundColor: Color.fromARGB(255, 45, 44, 44),
                    backgroundColor: Colors.white,
                    shadowColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    fixedSize: const Size(240, 50)
                  ), 
                  child: const Text(
                    'Siguiente',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),);
  }
}
