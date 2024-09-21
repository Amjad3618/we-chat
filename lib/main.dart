import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:we_chat/screens/login_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'we chat ',
      theme: ThemeData(
        // iconButtonTheme: IconButtonThemeData(style: ButtonStyle(backgroundColor: Colors.orange) ),
        scaffoldBackgroundColor: Colors.black54,
    
        useMaterial3: true,
      ),
      home:  LoginScreen());
  }
}

