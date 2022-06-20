import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foodly_app/screens/login_screen.dart';
import 'package:foodly_app/utils/color_constants.dart';
import 'dart:async';
import '../components/logo.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(Duration(seconds: 5), (){
      Navigator.pushReplacement(
        context, 
        MaterialPageRoute(builder: (context)=> 
          LoginScreen()
        ));
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0.0, end: 1.0), 
          duration: const Duration(seconds: 4), 
          builder: (context, double opacity, Widget? child) {
            return Opacity(
              opacity: opacity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(),
                  Logo(fontSize: 30,),
                  Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    child: const Text(
                      "Welcome to Foodly",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.4,
                      ),
                    ),
                  )
                ],
              ),
            );
          }
        )
      ),
    );
  }
}

