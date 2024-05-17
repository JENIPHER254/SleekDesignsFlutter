import 'package:flutter/material.dart';
import 'package:pizza_pal/screens/home_screen/home_screen.dart';
import 'package:pizza_pal/screens/single_item_screen/single_item_screen.dart';
import 'package:pizza_pal/screens/welcome_screen/welcome_screen.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/home': (context) => HomeScreen(),
        '/single':(context) => SingleItemScreen(),
      }));
}
