import 'package:app_tempo/pages/home.dart';
import 'package:app_tempo/pages/message.dart';
import 'package:app_tempo/services/push_notification.dart';
import 'package:flutter/material.dart';

void main() async{  
  WidgetsFlutterBinding.ensureInitialized(); 
  await pushNotificationService.initialApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home',
      routes: {
        'home': ( _ ) => HomeScreen(),
        'message': ( _ ) => MessageScreen(),
      },
    );
  }
}