// Import necessary packages
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pagages/item_page.dart';
import 'package:flutter_application_1/pagages/cart_page.dart';
import 'package:flutter_application_1/screan/home_page.dart'; // Import your custom screen

void main() {
  runApp(const MyApp()); // Entry point of the application
}

// Define the main application widget
class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Constructor for the MyApp class

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Construct and return the MaterialApp widget
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Hide the debug banner
      title: 'Flutter Demo', // Set the title of the app
      theme: ThemeData(
        scaffoldBackgroundColor:
            Colors.white, // Set the background color of scaffold
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple), // Customize color scheme
        useMaterial3: true, // Enable Material 3 design
      ),
      routes: {
        "/": (context) =>
            const ShoppingApp(), // Define the default route to the ShoppingApp
        "cartPage": (context) => const CartPage(),
        "itemPage": (context) => ItemPages(),
      },
    );
  }
}
