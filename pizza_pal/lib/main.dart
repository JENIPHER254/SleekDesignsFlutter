import 'package:flutter/material.dart';
import 'package:pizza_pal/screens/welcome_screen.dart';

void main() {
  runApp(MaterialApp(

    initialRoute: '/',

    routes: {
      '/':(context) => WelcomeScreen()
    },
  ));
}
