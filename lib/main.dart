

import 'package:flutter/material.dart';
import 'pages/tasbeh_home.dart';
import 'pages/splash_screen.dart';

void main() {
  runApp(MyApp());
}

// main class
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)
            .copyWith(secondary: Colors.white70),
      ),

      home: SplashScreen(),
    );
  }
}
