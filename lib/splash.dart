
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:secondsemflut/login.dart';
import 'package:secondsemflut/main.dart';
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 5),
      () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
        return  const MyApp();
      })),
      );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Center(
        child: Image.asset('assets/images/infinity.gif'),
       
      ),
    );
  }
}