import 'package:flutter/material.dart';
import 'package:marebu/screen/home/home.dart';
import 'package:marebu/screen/intro/onboarding.dart';
import 'package:marebu/screen/login/login.dart';
import 'package:marebu/screen/signup/signup.dart';
import 'package:marebu/screen/splash/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Inter",
        primarySwatch: Colors.blue,
      ),
      routes: {
        // '/': (context) => SplashPage(),
        '/': (context) => SplashScreen(),
        '/onboarding': (context) => OnBoarding(),
        '/log-in': (context) => Login(),
        '/home': (context) => Home(),
        '/signup': (context) => SignUp(),
      },
    );
  }
}
