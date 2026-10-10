import 'package:flutter/material.dart';
import 'screens/splash_page.dart'; // Import splash page

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Waste App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: const SplashPage(), // Mula paparkan Splash Page dahulu
    );
  }
}
