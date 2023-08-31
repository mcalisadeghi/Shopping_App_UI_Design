import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemAppbar extends StatefulWidget {
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
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
            ),
          )
        ],
      ),
    );
  }
}
