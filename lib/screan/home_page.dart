// Import necessary packages
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screan/appbar.dart';
import 'package:flutter_application_1/widgets/categories_widget.dart';
import 'package:flutter_application_1/widgets/item_widget.dart'; // Import your custom app bar
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

// Define a stateful widget for the shopping app
class ShoppingApp extends StatefulWidget {
  const ShoppingApp({super.key});

  @override
  State<ShoppingApp> createState() => _ShoppingAppState();
}

// Define the state for the ShoppingApp widget
class _ShoppingAppState extends State<ShoppingApp> {
  @override
  Widget build(BuildContext context) {
    // Construct the main scaffold for the shopping app
    return Scaffold(
      body: ListView(
        children: <Widget>[
          const HomePageAppBar(), // Display the custom app bar
          Container(
            // height: 500,
            padding: const EdgeInsets.only(
              top: 15,
            ),
            decoration: const BoxDecoration(
              color: Color(
                0xFFEDECF2,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  35,
                ),
                topRight: Radius.circular(
                  35,
                ),
              ),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      30,
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          left: 5,
                        ),
                        height: 50,
                        width: 300,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search here...',
                          ),
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.camera_alt,
                        size: 27,
                        color: Color(
                          0xFF4C53A5,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  child: const Text(
                    'Categories', // Display the section title
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(
                        0xFF4C53A5,
                      ),
                    ),
                  ),
                ),
                // Add CategoriesWidget here if available
                //categories
                // Categories widget

                const CategoriesWidget(),
                // Container with text "Best Selling"

                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  child: const Text(
                    'Best Selling',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(
                        0xFF4C53A5,
                      ),
                    ),
                  ),
                ),
                //Item widget
                const ItemWidget(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        onTap: (index) {}, backgroundColor: Colors.transparent,
        height: 70,
        color: const Color(
          0xFF4C53A5,
        ),
        // Navigation bar items

        items: const <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            CupertinoIcons.cart_fill,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.list,
            size: 30,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
