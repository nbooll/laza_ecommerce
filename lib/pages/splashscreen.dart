import 'dart:async';

import 'package:flutter/material.dart';
import 'package:laza_ecommerce/pages/homepage1.dart';

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
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const HomePage1())));
  }

  @override
  Widget build(BuildContext context) {
    setState(() {});
    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter,
              stops: [0.1, 0.5, 0.7, 0.9],
              colors: [
                Color.fromARGB(255, 212, 199, 235),
                Color.fromARGB(255, 151, 117, 250),
                Color.fromARGB(255, 195, 172, 235),
                Color.fromARGB(255, 151, 117, 250),
              ],
            ),
          ),
          child: Image.asset('images/logo.png'),
        ),
      ),
    );
  }
}
