import 'package:flutter/material.dart';
import 'package:newsapp/ui/category/category_details.dart';
import 'package:newsapp/ui/home_screen/home_screen.dart';
import 'package:newsapp/ui/splash_screen.dart';
import 'package:newsapp/utils/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        HomeScreen.routeName:(context)=>HomeScreen(),
        SplashScreen.routeName:(context)=>SplashScreen()
      },
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
    );
}}
