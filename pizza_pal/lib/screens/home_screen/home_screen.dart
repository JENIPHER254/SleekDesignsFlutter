import 'package:flutter/material.dart';
import 'package:pizza_pal/widgets/italic_text/italic_text.dart';
import 'package:pizza_pal/widgets/large_text/large_text.dart';
import 'package:pizza_pal/widgets/small_text/small_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> pizza = [
    "pizza1",
    "pizza2",
    "pizza4",
    "pizza5",
    "pizza3",
  ];
  List<String> pizza2 = [
    "pizza2",
    "pizza3",
    "pizza4",
    "pizza1",
    "pizza5",
    
  ];

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
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/ppl2.jpg'),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.grey,
                            )),
                        constraints: BoxConstraints(maxHeight: 55),
                        prefixIcon: Icon(
                          Icons.search,
                          color: const Color.fromARGB(255, 182, 181, 181),
                        ),
                        hintText: 'Search Your Preference ...',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18)),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                          color: const Color.fromARGB(255, 61, 61, 61),
                          fontSize: 14.0),
                      onChanged: (text) {
                        print('Text changed: $text');
                      },
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.red,
                        ),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.filter_list,
                              color: Colors.white,
                            )),
                      ))
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(32),
                  child: Image(
                    image: AssetImage('assets/images/banner2.jpg'),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
                child: Row(
                  children: [
                    Expanded(
                        flex: 3, child: small_text("Categories", Colors.black)),
                    Expanded(
                      flex: 1,
                      child: small_text("See more...", Colors.red),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: pizza.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(15),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image(
                              image: AssetImage(
                                  "assets/images/${pizza[index]}.jpg"))),
                    );
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
                child: Row(
                  children: [
                    Expanded(
                        flex: 3, child: small_text("Popular", Colors.black)),
                    Expanded(
                      flex: 1,
                      child: small_text("See more...", Colors.red),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: pizza2.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(15),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image(
                              image: AssetImage(
                                  "assets/images/${pizza2[index]}.jpg"))),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
