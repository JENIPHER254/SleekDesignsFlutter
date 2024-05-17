import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pizza_pal/widgets/italic_text/italic_text.dart';
import 'package:pizza_pal/widgets/large_text/large_text.dart';
import 'package:pizza_pal/widgets/main_button/main_button.dart';
import 'package:pizza_pal/widgets/small_text/small_text.dart';

class SingleItemScreen extends StatelessWidget {
  const SingleItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            large_text("Cheese Pizza"),
            Icon(
              Icons.favorite,
              color: Colors.red,
            )
          ],
        ),
      ),
      body: Container(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width * .7,
                        child: Image(
                            image: AssetImage('assets/images/pizza6.jpg'))),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          italic_text("Calories"),
                          small_text("120", Colors.black),
                        ],
                      ),
                      Container(
                        width: 1.0,
                        height: 40.0,
                        color: Colors.black,
                      ),
                      Column(
                        children: [
                          italic_text("Volume"),
                          small_text("12 inch", Colors.black),
                        ],
                      ),
                      Container(
                        width: 1.0,
                        height: 40.0,
                        color: Colors.black,
                      ),
                      Column(
                        children: [
                          italic_text("Distance"),
                          small_text("1km", Colors.black),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          italic_text("Order"),
                          Row(
                            children: [
                              Icon(
                                Icons.add_circle,
                                color: Colors.green,
                              ),
                              small_text(" 12 ", Colors.black),
                              Icon(
                                Icons.remove_circle,
                                color: Colors.red,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          italic_text("Delivery"),
                          small_text("Express", Colors.green),
                        ],
                      ),
                      Column(
                        children: [
                          italic_text("Price"),
                          small_text("800ksh", Colors.red),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30, left: 45, right: 45),
                  width: double.infinity,
                  child: main_button("Add to Cart", () {
                    Navigator.pushNamed(context, '/home');
                  }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
