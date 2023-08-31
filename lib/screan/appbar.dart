// Import necessary packages
import 'package:badges/badges.dart'; // Import the badges package
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

// Define a stateful widget for the app bar in the home page
class HomePageAppBar extends StatefulWidget {
  const HomePageAppBar({super.key});

  @override
  State<HomePageAppBar> createState() => _HomePageAppBarState();
}

// Define the state for the HomePageAppBar widget
class _HomePageAppBarState extends State<HomePageAppBar> {
  @override
  Widget build(BuildContext context) {
    // Construct the app bar container
    return Container(
      color: Colors.white, // Set the background color
      padding: const EdgeInsets.all(
        25,
      ),
      child: Row(
        children: [
          Icon(
            Icons.sort,
            size: 30,
            color: Color(
              0xFF4C53A5,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              'DP shop', // Display the app title
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color(
                  0xFF4C53A5,
                ),
              ),
            ),
          ),
          Spacer(), // Add flexible space to push the badge to the right
          // Add a badge with a shopping bag icon and a notification count
          badges.Badge(
            badgeStyle: const BadgeStyle(
              badgeColor: Colors.red, // Set badge background color
              padding: EdgeInsets.all(
                7,
              ),
            ),
            badgeContent: const Text(
              '3', // Display the notification count
              style: TextStyle(
                color: Colors.white, // Set the text color
              ),
            ),
            child: InkWell(
              onTap: () {},
              child: const Icon(
                Icons.shopping_bag_outlined, // Display the shopping bag icon
                size: 32,
                color: Color(
                  0xFF4C53A5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
