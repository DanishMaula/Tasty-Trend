import 'package:flutter/material.dart';
import 'package:tasty_trend_sc/models/recipe.dart';
import 'package:tasty_trend_sc/pages/home_page.dart';
import 'package:tasty_trend_sc/recipe_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

