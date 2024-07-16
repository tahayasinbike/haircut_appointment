import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:haircut_appointment/constants/colors.dart';
import 'package:haircut_appointment/views/home_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
          splash: Image.asset("assets/maskumen_logo.png"),
          duration: 1500,
          backgroundColor: CustomColors.drawerColor,
          splashTransition: SplashTransition.fadeTransition,
          nextScreen: const HomeView()),
      title: "Haircut",
    );
  }
}
