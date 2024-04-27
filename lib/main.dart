import 'package:flutter/material.dart';
import 'package:quiz_app/features/splash/views/splash_screen.dart';




  void main() {
  runApp(const MyApp());


  print('nabil');
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplashScreen(),
    );
  }
}

