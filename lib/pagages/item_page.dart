// Import necessary packages
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:clippy_flutter/clippy_flutter.dart';
// Import custom widgets and classes
import 'package:flutter_application_1/widgets/item_bottom_nav_bar.dart';
import 'package:flutter_application_1/widgets/item_appbar.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ItemPages extends StatefulWidget {
  const ItemPages({super.key});

  @override
  State<ItemPages> createState() => _ItemPagesState();
}

class _ItemPagesState extends State<ItemPages> {
  List<Color> colorsnext = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.orange,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Set the background color of the scaffold
      backgroundColor: const Color(
        0xFFEDECF2,
      ),
      body: ListView(
        children: <Widget>[
          // Display the ItemAppbar widget at the top of the page.
          const ItemAppbar(),
          Padding(
            padding: const EdgeInsets.all(
              16,
            ),
            // Display an image from assets.
            child: Image.asset(
              'assets/images/1.png',
              height: 300,
            ),
          ),
          Arc(
            edge: Edge.TOP,
            arcType: ArcType.CONVEY,
            height: 30,
            child: Container(
              width: double.infinity,
              // Set the container's background color.
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 50,
                        bottom: 20,
                      ),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Product Title',
                            style: TextStyle(
                              fontSize: 28,
                              color: Color(
                                0xFF4C53A5,
                              ),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 4,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          RatingBar.builder(
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 20,
                            itemPadding: const EdgeInsets.symmetric(
                              horizontal: 4,
                            ),
                            itemBuilder: (contex, _) => const Icon(
                              Icons.favorite,
                              color: Color(
                                0xFF4C53A5,
                              ),
                            ),
                            onRatingUpdate: (index) {},
                          ),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(
                                  5,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(
                                    20,
                                  ),
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(
                                        0.5,
                                      ),
                                      spreadRadius: 3,
                                      blurRadius: 3,
                                      offset: const Offset(
                                        0,
                                        3,
                                      ),
                                    )
                                  ],
                                ),
                                child: const Icon(
                                  CupertinoIcons.minus,
                                  size: 18,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                child: const Text(
                                  '01',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color(
                                      0xFF4C53A5,
                                    ),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(
                                  5,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(
                                    20,
                                  ),
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(
                                        0.5,
                                      ),
                                      spreadRadius: 3,
                                      blurRadius: 3,
                                      offset: const Offset(
                                        0,
                                        3,
                                      ),
                                    ),
                                  ],
                                ),
                                child: const Icon(
                                  CupertinoIcons.plus,
                                  size: 18,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 12,
                      ),
                      child: Text(
                        'this is... details dectiption...',
                        style: TextStyle(
                          fontSize: 17,
                          color: Color(
                            0xFF4C53A5,
                          ),
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                      ),
                      child: Row(
                        children: <Widget>[
                          const Text(
                            'Size:',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(
                                0xFF4C53A5,
                              ),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: <Widget>[
                              for (int i = 0; i < 5; i++)
                                Container(
                                  height: 30,
                                  width: 30,
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.symmetric(
                                    horizontal: 5,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                      30,
                                    ),
                                    boxShadow: <BoxShadow>[
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(
                                          0.5,
                                        ),
                                        spreadRadius: 2,
                                        blurRadius: 8,
                                      ),
                                    ],
                                  ),
                                  child: Text(
                                    i.toString(),
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(
                                        0xFF4C53A5,
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                      ),
                      child: Row(
                        children: <Widget>[
                          const Text(
                            'Color:',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(
                                0xFF4C53A5,
                              ),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: <Widget>[
                              for (int i = 0; i < 5; i++)
                                Container(
                                  height: 30,
                                  width: 30,
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.symmetric(
                                    horizontal: 5,
                                  ),
                                  decoration: BoxDecoration(
                                    color:
                                        colorsnext[i], // Display color options.
                                    borderRadius: BorderRadius.circular(
                                      30,
                                    ),
                                    boxShadow: <BoxShadow>[
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(
                                          0.5,
                                        ),
                                        spreadRadius: 2,
                                        blurRadius: 8,
                                      ),
                                    ],
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      // Display the ItemBottomNavBar widget at the bottom of the page.
      bottomNavigationBar: const ItemBottomNavBar(),
    );
  }
}
