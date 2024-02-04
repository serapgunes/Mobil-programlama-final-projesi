import 'package:flutter/material.dart';
import 'screens/about.dart';
import 'screens/bag.dart';
import 'screens/clothes.dart';
import 'screens/diamond.dart';
import 'screens/giris.dart';
import 'screens/homepage.dart';
import 'screens/location.dart';
import 'screens/loginscreen.dart';
import 'screens/profilscreen.dart';
import 'screens/shoes.dart';
import 'screens/shop.dart';
import 'screens/welcomescreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping',
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (context) => homepage(),
        '/login':(context) => loginscreen(),
        '/profil':(context) => profilscreen(),
        '/welcome': (context) => welcomescreen(),
        '/giris':(context) => giris(),
        '/shop':(context) => shop(),
        '/about': (context) => about(),
        '/bag': (context) => bag(),
        '/clothes': (context) => clothes(),
        '/shoes': (context) => shoes(),
        '/diamond': (context) => diamond(),
        '/location': (context) => location(),
        

      },
      initialRoute: '/welcome',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black87),
        useMaterial3: true,
      ),
    );
  }
}