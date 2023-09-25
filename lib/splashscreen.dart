import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trainig5/Cartcontroller.dart';

import 'package:trainig5/Pageone.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        return Pageone();
      }));
  
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      body: SafeArea(
          child: Center(
        child: CircularProgressIndicator(
          backgroundColor: Colors.yellowAccent,
          color: Colors.red,
          strokeWidth: 8,
        ),
      )),
    );
  }
}
