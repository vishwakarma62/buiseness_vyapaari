import 'dart:async';

import 'package:buiseness_vyapaari/ui/login_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return LoginPage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(children: [
        Image.asset(
          "assets/images/splash_bg.jpg",
          fit: BoxFit.fill,
          height: double.infinity,
          width: double.infinity,
        ),
        Center(
            child: Image.asset("assets/icons/splash_logo_bg.png",width: 260,height: 260,)),
      ]),
    );
  }
}
