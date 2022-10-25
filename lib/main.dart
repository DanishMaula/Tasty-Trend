import 'package:flutter/material.dart';
import 'package:tasty_trend_sc/models/recipe.dart';
import 'package:tasty_trend_sc/pages/home_page.dart';
import 'package:tasty_trend_sc/item%20list/recipe_item.dart';
import 'package:tasty_trend_sc/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SplashScreen(),
    );
  }
}


