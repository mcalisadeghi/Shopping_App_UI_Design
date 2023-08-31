// Import necessary packages
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screan/appbar.dart';
import 'package:flutter_application_1/widgets/CategoriesWidget.dart'; // Import your custom app bar

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
            height: 500,
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
              children: [
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
                const CategoriesWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
