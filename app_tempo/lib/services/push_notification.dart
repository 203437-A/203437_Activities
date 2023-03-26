
// SHA1: 2D:16:93:49:63:7D:B9:BB:9E:E4:06:0F:94:E1:41:86:A0:15:E1:ED

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class pushNotificationService{
  static FirebaseMessaging messaging = FirebaseMessaging.instance;
  static String? token;

  static Future initialApp() async{

    await Firebase.initializeApp();
    token = await FirebaseMessaging.instance.getToken();
    print('Token:$token');


  }
}
