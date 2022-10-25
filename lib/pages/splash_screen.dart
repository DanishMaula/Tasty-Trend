import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:tasty_trend_sc/pages/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 2),
        (() => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return const MyHomePage();
            }))));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffDB7D0F),
      child: Center(
          child: Image.asset(
        'assets/images/sc_logo.png',
        width: 232,
        height: 188,
      )),
    );
  }
}
