import 'package:flutter/material.dart';

class ItemAppbar extends StatefulWidget {
  // Constructor for ItemAppbar widget.

  const ItemAppbar({super.key});

  @override
  State<ItemAppbar> createState() => _ItemAppbarState();
}

class _ItemAppbarState extends State<ItemAppbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
              'Product',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color(
                  0xFF4C53A5,
                ),
              ),
            ),
          ), // A flexible space that pushes the next widget to the right.
          const Spacer(),
          const Icon(
            Icons.favorite,
            size: 30,
            // Display a red heart icon.
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
