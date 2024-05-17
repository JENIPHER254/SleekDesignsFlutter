import 'package:flutter/material.dart';
import 'package:pizza_pal/widgets/italic_text/italic_text.dart';
import 'package:pizza_pal/widgets/large_text/large_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        italic_text("Deliver to..."),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.red,
                            ),
                            large_text("Nairobi, Kenya"),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.red,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/images/ppl2.jpg'),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
