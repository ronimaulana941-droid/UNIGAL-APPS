import 'package:flutter/material.dart';
import 'package:dasar_project/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     title: 'Aplikasi',
     theme: ThemeData(
      primarySwatch: Colors.deepPurple,
     ),
     home: SplashScreen(),
    );
  }
}
