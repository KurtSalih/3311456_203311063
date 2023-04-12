import 'package:flutter/material.dart';
import 'package:seyyarim/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SEYYARIM',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          elevation: 0,
          brightness: Brightness.light,
          iconTheme: IconThemeData(color: Colors.black),
          textTheme: TextTheme(
            headline6: TextStyle(
              fontSize: 18,
              color: Color(0xFF888888),
            ),
          ),
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Color(0xFF757575),
          ),
        ),
      ),
      home: SplashScreen(),
    );
  }
}
