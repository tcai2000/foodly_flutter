import 'package:flutter/material.dart';
import 'package:foodly_app/utils/color_constants.dart';
import 'screens/splash_screen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Foodly Aplication',
      theme: ThemeData(
        // fontFamily: 'Cera Roun',
        brightness: Brightness.light,        
        primaryColor: primaryColor,
      ),
      home: SplashScreen()
    );
  }
}

