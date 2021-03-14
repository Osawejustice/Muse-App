import 'package:flutter/material.dart';
import 'package:muse/config/constant.dart';
import 'package:muse/screen/splash/splash_screen.dart';

void main() {
  runApp(Muse());
}

class Muse extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Muse',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}
