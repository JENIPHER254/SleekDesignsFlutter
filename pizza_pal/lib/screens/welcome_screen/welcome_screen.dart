import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pizza_pal/widgets/italic_text/italic_text.dart';
import 'package:pizza_pal/widgets/large_text/large_text.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(image: AssetImage('assets/images/delivery1.jpg')),
                large_text("Order Your Food Now!"),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: italic_text(
                      "Order food and get delivery within a few minutes to your door"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
