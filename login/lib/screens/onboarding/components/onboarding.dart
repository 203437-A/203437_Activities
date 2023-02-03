import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login/screens/onboarding/components/content_boarding.dart';
import 'package:login/screens/onboarding/components/content_page.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentPage = 0;
  List<Map<dynamic, dynamic>> boardingData = [
    {"Title": "A", "Title2": "1"},
    {"Title": "B", "Title2": "2"},
    {"Title": "C", "Title2": "3"},
    {"Title": "A", "Title2": "1"},
    {"Title": "B", "Title2": "2"},
    {"Title": "C", "Title2": "3"},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Expanded(
          flex: 2,
          child: PageView.builder(
            itemBuilder: (context, index) => ContentBoarding(
              title: boardingData[index]["Title"],
              title2: boardingData[index]["Title2"],
            ),
            itemCount: boardingData.length,
            onPageChanged: (value) {
              setState(() {
                currentPage = value;
              });
            },
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  boardingData.length,
                  (index) => page(index: index, currentPage: currentPage),
                ),
              ),
            ],
          ),
          flex: 2,
        )
      ],
    ));
  }
}
