// Import necessary packages
import 'package:flutter/material.dart';

class CartAppBar extends StatefulWidget {
  const CartAppBar({super.key});

  @override
  State<CartAppBar> createState() => _CartAppBarState();
}

class _CartAppBarState extends State<CartAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // Set the background color to white.
      color: Colors.white,
      padding: const EdgeInsets.all(
        25,
      ),
      child: Row(
        children: <Widget>[
          InkWell(
            onTap: () {
              // Navigate back when this icon is tapped.
              Navigator.pop(context);
            },
            child: const Icon(
              // Display a back arrow icon.
              Icons.arrow_back,
              size: 30,
              color: Color(
                0xFF4C53A5,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              'Cart',
            ),
          ), // A flexible space that pushes the next widget to the right.
          const Spacer(),
          const Icon(
            // Display a more options icon (vertical ellipsis).
            Icons.more_vert,
            size: 30,
            color: Color(
              0xFF4C53A5,
            ),
          ),
        ],
      ),
    );
  }
}
