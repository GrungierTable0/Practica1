
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:practica1/screens/counter_screen.dart';
import 'package:practica1/screens/dashboard_screen.dart';
import 'package:practica1/screens/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}): super(key: key);
  

  @override
  Widget build(BuildContext context) {
    bool bandera = false;
    
    Future<bool> initSP() async {
      final prefs = await SharedPreferences.getInstance();
      return await prefs.getBool('keepLogin') ?? false;
    }
    void res() async{
      print('${await initSP()} splash');
      bandera=await initSP();
    }
    res();
    if(bandera){
      return SplashScreenView (
        navigateRoute: DashboardScreen(),
        duration: 3000,
        imageSize: 130,
        imageSrc: "assets/logo.png",
        text: "Practica 1",
        textType: TextType.ScaleAnimatedText,
        textStyle: TextStyle(
          fontSize: 30.0,
        ),
        backgroundColor: Colors.white,
      );
    }else{
      return SplashScreenView (
        navigateRoute: LoginScreen(),
        duration: 3000,
        imageSize: 130,
        imageSrc: "assets/logo.png",
        text: "Practica 1",
        textType: TextType.ScaleAnimatedText,
        textStyle: TextStyle(
          fontSize: 30.0,
        ),
        backgroundColor: Colors.white,
      );
      
    }
    
  }
  
  


  }